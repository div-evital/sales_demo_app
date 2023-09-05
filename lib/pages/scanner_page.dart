// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:evital_sales/api/repository.dart';
import 'package:evital_sales/utils/app_nav_path.dart';
import 'package:evital_sales/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../model/dashboard/dashboard_model_entity.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> with WidgetsBindingObserver {
  MobileScannerController _mobileScannerController = MobileScannerController();
  DashboardModelEntity _dashboardModelEntity = DashboardModelEntity();
  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _mobileScannerController = MobileScannerController(
      detectionSpeed: DetectionSpeed.normal,
      facing: CameraFacing.back,
    );
    //setAudioConfig();
  }

  Future<void> setAudioConfig() async {
    await audioPlayer
        .setSourceAsset(AssetSource("assets/audio/beep.mp3") as String);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    log("AppLifeCycle Called", name: "Life-Cycle");
    switch (state) {
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.hidden:
        break;
      case AppLifecycleState.paused:
        _mobileScannerController.stop();

        break;
      case AppLifecycleState.resumed:
        _mobileScannerController.start();
        break;
      case AppLifecycleState.detached:
        _mobileScannerController.stop();
        _mobileScannerController.dispose();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.error,
                    color: Colors.white,
                  ),
                  Text(
                    " Having trouble ?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  MobileScanner(
                    controller: _mobileScannerController,
                    onDetect: (barcodes) async {
                      if (barcodes.barcodes.elementAt(0).rawValue != null) {
                        String serial =
                            barcodes.barcodes.elementAt(0).rawValue ?? "";
                        _mobileScannerController.stop();
                        await audioPlayer.play(AssetSource("audio/beep.mp3"));
                        openProgressDialog();
                        try {
                          _dashboardModelEntity = await Repository()
                              .getDashboardApiResponse(serialNo: serial);
                        } on DioException catch (e) {
                          String message = e.error is SocketException
                              ? "No Internet"
                              : e.message ?? "";

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(message),
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.red,
                            ),
                          );
                        } catch (e) {
                          log(e.toString());
                        }
                      } else {}
                      setState(() {});
                    },
                    overlay: Container(
                      height: MediaQuery.of(context).size.width * 0.4,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.info,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        onPressed: () async {
                          await showMaterialModalBottomSheet(
                            context: context,
                            expand: false,
                            enableDrag: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            bounce: true,
                            builder: (context) {
                              return Container(height: 200);
                            },
                          );
                        },
                      ),
                      IconButton(
                        icon: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: ValueListenableBuilder(
                            valueListenable:
                                _mobileScannerController.torchState,
                            builder: (context, state, child) {
                              switch (state) {
                                case TorchState.off:
                                  return const Icon(Icons.flash_off,
                                      color: Colors.grey);
                                case TorchState.on:
                                  return const Icon(Icons.flash_on,
                                      color: Colors.yellow);
                              }
                            },
                          ),
                        ),
                        color: Colors.white,
                        padding: const EdgeInsets.only(right: 10, bottom: 10),
                        onPressed: () => _mobileScannerController.toggleTorch(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> openProgressDialog() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        Future.delayed(
          const Duration(seconds: 1),
          () {
            if ((_dashboardModelEntity.data?.medicines?.result ?? [])
                .isNotEmpty) {
              Navigator.of(context).pop();
              openProductBottomSheet();
            } else {
              addToNewProduct();
            }
          },
        );
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10),
                child: const CircularProgressIndicator(),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> openProductBottomSheet() async {
    await showModalBottomSheet(
      context: context,
      builder: (_) {
        log(_dashboardModelEntity.statusCode.toString(), name: "Status");
        List<DashboardModelDataMedicinesResult> results =
            _dashboardModelEntity.data?.medicines?.result ?? [];
        return results.isEmpty
            ? const Center(child: Text("Not Avail"))
            : ListView.builder(
                itemCount: results.length,
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  DashboardModelDataMedicinesResult model =
                      results.elementAt(index);
                  return SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          //color: Colors.indigo,
                          width: double.infinity,
                          height: 150,
                          child: Wrap(
                            direction: Axis.horizontal,
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: CachedNetworkImage(
                                    imageUrl: AppStrings.localImage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Wrap(
                                direction: Axis.vertical,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: Text(
                                      model.medicineName ?? "",
                                      maxLines: 2,
                                      style: const TextStyle(fontSize: 17),
                                    ),
                                  ),
                                  Text(model.packingSize ?? ""),
                                  Text(
                                    model.manufacturerName ?? "",
                                    style: const TextStyle(
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "MRP",
                                style: const TextStyle(color: Colors.grey),
                                children: [
                                  TextSpan(
                                    text:
                                        "\n${double.parse(model.mrp.toString()).toStringAsFixed(2)}" ??
                                            "",
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
      },
    ).whenComplete(
      () {
        setState(() {
          _dashboardModelEntity = DashboardModelEntity();
        });
        _mobileScannerController.start();
      },
    );
  }

  addToNewProduct() async {
    Navigator.of(context).pop();
    _mobileScannerController.stop();
    final status =
        await Navigator.of(context).pushNamed(AppNavPath.addToNewProductPage);
    if (status as bool) {
      _mobileScannerController.start();
    } else {
      _mobileScannerController.stop();
    }
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    _mobileScannerController.stop();
    _mobileScannerController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    audioPlayer.dispose();

    super.dispose();
  }
}
