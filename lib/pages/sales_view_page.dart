import 'dart:developer';
import 'dart:io';

import 'package:evital_sales/cubit/sales/sales_view/sales_view_cubit.dart';
import 'package:evital_sales/cubit/sales/sales_view/sales_view_state.dart';
import 'package:evital_sales/model/date_model.dart';
import 'package:evital_sales/pages/display_image_prescription.dart';
import 'package:evital_sales/utils/app_nav_path.dart';
import 'package:evital_sales/utils/app_strings.dart';
import 'package:evital_sales/utils/custom_date_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../model/view_model/sales_view_entity.dart';

class SalesViewPage extends StatefulWidget {
  final String orderNumber;
  final String orderId;

  const SalesViewPage({
    Key? key,
    required this.orderNumber,
    required this.orderId,
  }) : super(key: key);

  @override
  State<SalesViewPage> createState() => _SalesViewPageState();
}

class _SalesViewPageState extends State<SalesViewPage> {
  late bool uploadIconEnabled;
  File? selectedFile;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    uploadIconEnabled = false;
    context
        .read<SalesViewCubit>()
        .callSalesViewApiRequest(orderId: widget.orderId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SalesViewCubit, SalesViewState>(
      builder: (context, state) {
        if (state is SalesViewLoadingState) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is SalesViewSuccessState) {
          return displaySuccessWidget(context, state);
        }
        return const SizedBox();
      },
    );
  }

  Widget displaySuccessWidget(
      BuildContext context, SalesViewSuccessState state) {
    const style = TextStyle();
    final String doctorName = state.salesViewEntity.data?.doctorName ?? "";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Text(
          "#${widget.orderNumber}",
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            margin: const EdgeInsets.only(right: 10, bottom: 5),
            padding: const EdgeInsets.all(4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppStrings.billDateText,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Row(
                  children: [
                    Text(
                      CustomDateGenerate.convertDateIntoName(
                        date: DateModel.getDateModelList
                            .elementAt(0)
                            .startDate
                            .toString(),
                      ),
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                      size: 12,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: doctorName.isNotEmpty
                      ? MediaQuery.of(context).size.height * 0.19
                      : MediaQuery.of(context).size.height * 0.10,
                  color: Colors.indigo,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          height: 46,
                          width: 46,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        titleTextStyle:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                        subtitleTextStyle:
                            const TextStyle(color: Colors.white, fontSize: 18),
                        title: const Text("Customer"),
                        subtitle:
                            Text(state.salesViewEntity.data?.patientName ?? ""),
                      ),
                      Visibility(
                        visible: doctorName.isNotEmpty ? true : false,
                        child: ListTile(
                          leading: Container(
                            height: 46,
                            width: 46,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: const Icon(
                              Icons.medical_information,
                              color: Colors.white,
                            ),
                          ),
                          titleTextStyle:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                          subtitleTextStyle: const TextStyle(
                              color: Colors.white, fontSize: 18),
                          title: const Text("Doctor"),
                          subtitle: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(doctorName),
                                ),
                                Visibility(
                                  visible: uploadIconEnabled,
                                  child: const VerticalDivider(
                                    color: Colors.grey,
                                    thickness: 2,
                                  ),
                                ),
                                Visibility(
                                  visible: uploadIconEnabled,
                                  child: GestureDetector(
                                    onTap: () {
                                      selectedFile != null
                                          ? uploadPrescription()
                                          : openImageSelectionOption();
                                    },
                                    onDoubleTap: () {
                                      uploadIconEnabled = false;
                                      selectedFile = null;
                                      setState(() {});
                                    },
                                    child: Badge(
                                      isLabelVisible: true,
                                      label: selectedFile != null
                                          ? const Text("1")
                                          : const Icon(
                                              Icons.upload_outlined,
                                              size: 12,
                                              color: Colors.white,
                                            ),
                                      largeSize: 16,
                                      backgroundColor: selectedFile != null
                                          ? Colors.orange
                                          : Colors.blue,
                                      alignment: Alignment.topRight,
                                      child: const Icon(
                                        Icons.upload_file,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                displayItemsLength(),
                Divider(
                  height: 0,
                  color: Colors.grey.withOpacity(0.4),
                ),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: state.salesViewEntity.data?.items?.length ?? 0,
                    itemBuilder: (context, index) {
                      SalesViewDataItems items =
                          state.salesViewEntity.data?.items!.elementAt(index) ??
                              SalesViewDataItems();
                      return displayContents(items, style);
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                      height: 0,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.indigo.shade700,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ColoredBox(
                          color: Colors.indigo.shade900,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.print,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                "Print",
                                style: style.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              uploadIconEnabled = true;
                            });
                          },
                          child: ColoredBox(
                            color: Colors.blue.shade900,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Edit",
                                  style: style.copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: "Net Amt. ",
                                  style: style.copyWith(
                                      color: Colors.white, fontSize: 12),
                                  children: [
                                    TextSpan(
                                      text: double.parse(state
                                                  .salesViewEntity.data?.amount
                                                  .toString() ??
                                              "")
                                          .toStringAsFixed(2),
                                      style: style.copyWith(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_up_sharp,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible:
                      state.salesViewEntity.data?.nextId != 0 ? true : false,
                  child: Container(
                    height: 40,
                    width: 30,
                    color: Colors.blue.withOpacity(0.3),
                    child: IconButton(
                      onPressed: () {
                        HapticFeedback.lightImpact();
                        List<String> nextData = [
                          state.salesViewEntity.data?.orderNumber ?? "",
                          state.salesViewEntity.data?.nextId.toString() ?? "",
                        ];
                        Navigator.of(context).pushReplacementNamed(
                            AppNavPath.salesViewPage,
                            arguments: nextData);
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 30,
                  color: Colors.blue.withOpacity(0.3),
                  child: IconButton(
                    onPressed: () {
                      HapticFeedback.vibrate();
                      List<String> previousData = [
                        state.salesViewEntity.data?.orderNumber ?? "",
                        state.salesViewEntity.data?.previousId.toString() ?? "",
                      ];
                      Navigator.of(context).pushReplacementNamed(
                          AppNavPath.salesViewPage,
                          arguments: previousData);
                    },
                    padding: EdgeInsets.zero,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget displayContents(SalesViewDataItems items, TextStyle style) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  items.medicineName ?? "",
                  style: style.copyWith(color: Colors.indigo, fontSize: 15),
                ),
                Text(
                  items.packSize ?? "",
                  style: style.copyWith(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    items.hsnCode ?? "NA",
                    style: style.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: style.copyWith(color: Colors.grey),
                      text: "Exp. ",
                      children: [
                        TextSpan(
                          text: items.expiry ?? "",
                          style: style.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: style.copyWith(color: Colors.grey),
                    text: "GST ",
                    children: [
                      TextSpan(
                        text: "${items.gstpercentage}%" ?? "",
                        style: style.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: style.copyWith(color: Colors.grey),
                      text: "Qty. ",
                      children: [
                        TextSpan(
                          text: items.quantity.toString() ?? "",
                          style: style.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: style.copyWith(color: Colors.grey),
                      text: "Disc. ",
                      children: [
                        TextSpan(
                          text:
                              "${double.parse(items.discount.toString()).toStringAsFixed(2)}%" ??
                                  "",
                          style: style.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: style.copyWith(color: Colors.grey),
                    text: "MRP: ",
                    children: [
                      TextSpan(
                        text: double.parse(items.mrp.toString())
                                .toStringAsFixed(2) ??
                            "",
                        style: style.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: style.copyWith(color: Colors.grey),
                    text: "Stock ",
                    children: [
                      TextSpan(
                        text: items.stock.toString() ?? "",
                        style: style.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: style.copyWith(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: "-",
                        style: style.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: style.copyWith(color: Colors.grey),
                    text: "Amt. ",
                    children: [
                      TextSpan(
                        text: double.parse(items.amount.toString())
                                .toStringAsFixed(2) ??
                            "",
                        style: style.copyWith(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayItemsLength() {
    return Container(
      height: 20,
      margin: const EdgeInsets.only(top: 5, left: 15, bottom: 5),
      child: BlocSelector<SalesViewCubit, SalesViewState, int>(
        selector: (state) {
          if (state is SalesViewSuccessState) {
            return state.salesViewEntity.data?.items?.length ?? 0;
          }
          return 0;
        },
        builder: (context, state) {
          return Text(
            "$state items",
            style: const TextStyle(color: Colors.blue),
          );
        },
      ),
    );
  }

  Future<void> openImageSelectionOption() async {
    await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) {
        return SizedBox(
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 5, left: 10),
                child: Text(
                  "Select Photo",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setImageConfig(imageSource: ImageSource.camera);
                      Navigator.of(context).pop();
                    },
                    icon: const CircleAvatar(
                      maxRadius: 30,
                      child: Icon(Icons.camera_alt_outlined),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      setImageConfig(imageSource: ImageSource.gallery);
                      Navigator.of(context).pop();
                    },
                    icon: const CircleAvatar(
                      maxRadius: 30,
                      child: Icon(Icons.photo),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Future<void> setImageConfig({required ImageSource imageSource}) async {
    final XFile? xfile = await ImagePicker().pickImage(source: imageSource);
    if (xfile != null) {
      setState(() {
        selectedFile = File(xfile.path);
      });
    } else {
      return;
    }
  }

  Future<void> uploadPrescription() async {
    final deletedPath = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            DisplayImagePrescriptionPage(imagePath: selectedFile?.path ?? ""),
      ),
    );
    if (deletedPath != null) {
      setState(() {
        selectedFile = null;
        uploadIconEnabled = true;
      });
    }
  }
}
