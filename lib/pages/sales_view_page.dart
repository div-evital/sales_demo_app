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
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
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
    final mobileNo = state.salesViewEntity.data?.mobile ?? "";
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: false,
                backgroundColor: Colors.indigo,
                automaticallyImplyLeading: false,
                titleSpacing: 0,
                elevation: 0.0,
                title: Text(
                  "#${widget.orderNumber}",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
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
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Flexible(
                          child: Text(
                            AppStrings.billDateText,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Text(
                                CustomDateGenerate.convertDateIntoName(
                                  date: DateModel.getDateModelList
                                      .elementAt(0)
                                      .startDate
                                      .toString(),
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
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
              SliverToBoxAdapter(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.indigo, width: 0),
                    color: Colors.indigo,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      customerTitleWidget(state, mobileNo),
                      const SizedBox(height: 15),
                      doctorTitleWidget(doctorName: doctorName),
                    ],
                  ),
                ),
              ),
              SliverStickyHeader(
                header: Container(
                  height: 40.0,
                  color: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  alignment: Alignment.centerLeft,
                  child: displayItemsLength(),
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 50,
                    (context, index) {
                      SalesViewDataItems items =
                          state.salesViewEntity.data?.items?.elementAt(0) ??
                              SalesViewDataItems();
                      return displayContents(items, style);
                    },
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Row(
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
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
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
          ),
        ],
      ),
    );
  }

  Widget customerTitleWidget(SalesViewSuccessState state, String mobileNo) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(left: 10),
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
          const SizedBox(
            width: 5,
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Customer",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                displayCustomerDetails(state, mobileNo),
              ],
            ),
          ),
          displayPrescriptionStatus(state),
        ],
      ),
    );
  }

  Widget doctorTitleWidget({required String doctorName}) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(left: 10),
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
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Doctor",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                displayDoctorDetails(doctorName: doctorName),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayPrescriptionStatus(SalesViewSuccessState state) {
    final prescriptionLength =
        state.salesViewEntity.data?.prescriptionImages?.length ?? 0;
    return prescriptionLength == 0
        ? const SizedBox()
        : Flexible(
            child: Visibility(
              visible: prescriptionLength != 0 ? true : false,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: SizedBox(
                      height: 28,
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        final imagePath = state
                                .salesViewEntity.data?.prescriptionImages
                                ?.map((e) => e["image"])
                                .toList()
                                .elementAt(prescriptionLength - 1)
                                .toString() ??
                            "";
                        showPrescriptionImages(imagePath: imagePath);
                      },
                      child: const Badge(
                        isLabelVisible: true,
                        label: Text("1"),
                        largeSize: 16,
                        backgroundColor: Colors.orange,
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.upload_file,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  Widget displayCustomerDetails(SalesViewSuccessState state, String mobileNo) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 10,
          child: Text(
            state.salesViewEntity.data?.patientName ?? "",
            maxLines: 1,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        Flexible(
          child: Visibility(
            visible: mobileNo.isNotEmpty ? true : false,
            child: const Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        Flexible(
          flex: 5,
          child: Visibility(
            visible: mobileNo.isNotEmpty ? true : false,
            child: Text(
              mobileNo,
              maxLines: 1,
              softWrap: true,
              overflow: TextOverflow.visible,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget displayDoctorDetails({required String doctorName}) {
    return Flexible(
      child: Text(
        doctorName,
        maxLines: 1,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget displayContents(SalesViewDataItems items, TextStyle style) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  items.medicineName ?? "",
                  style: style.copyWith(color: Colors.indigo, fontSize: 14),
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
      // height: 20,
      // margin: const EdgeInsets.only(top: 5, left: 15, bottom: 5),
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
            style: const TextStyle(color: Colors.blue, fontSize: 12),
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

  showPrescriptionImages({required String imagePath}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            DisplayImagePrescriptionPage(imagePath: imagePath),
      ),
    );
  }
}
