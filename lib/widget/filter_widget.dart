// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:evital_sales/cubit/sales/sales_cubit.dart';
import 'package:evital_sales/model/api_response_entity.dart';
import 'package:evital_sales/model/date_model.dart';
import 'package:evital_sales/utils/custom_date_generator.dart';
import 'package:evital_sales/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterWidget extends StatefulWidget {
  final BuildContext parentContext;

  final List<ApiResponseDataStaffList> staffList;
  final List<ApiResponseDataPaymentMethods> paymentModeList;

  String? details;

  FilterWidget({
    super.key,
    required this.parentContext,
    required this.staffList,
    required this.paymentModeList,
  });

  @override
  State<FilterWidget> createState() => FilterWidgetState();
}

class FilterWidgetState extends State<FilterWidget> {
  static String staffId = "";
  int staffSelectedPosition = 0;
  static String staffName = "All";
  static int currentDateSelected = 5;
  static bool appliedFilter = false;
  static String billName = "";
  static String orderName = "";
  static String personName = "";
  static String? paymentIconUrl;
  static String paymentStatusId = "";
  static String paymentMode = "All";
  String _displayedStartDate =
      DateModel.getDateModelList.elementAt(currentDateSelected).startDate;
  String _displayedEndDate =
      DateModel.getDateModelList.elementAt(currentDateSelected).endDate;
  TextEditingController _staffController =
      TextEditingController(text: staffName);
  TextEditingController _paymentController =
      TextEditingController(text: paymentMode);

  final TextEditingController _billController =
      TextEditingController(text: billName);
  final TextEditingController _orderController =
      TextEditingController(text: orderName);

  final TextEditingController _nameController =
      TextEditingController(text: personName);
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 15),
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 15,
            bottom: 10,
          ),
          alignment: Alignment.centerLeft,
          child: const Text(
            "Search / Apply Filter",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        Divider(
          height: 0,
          color: Colors.grey.withOpacity(0.2),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: widget.parentContext,
              builder: (_) {
                return buildAlertDialog(context);
              },
            );
          },
          child: Container(
            height: 60,
            padding:
                const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
            child: TextField(
              enabled: false,
              decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.lightBlue,
                ),
              ),
              controller: _staffController =
                  TextEditingController(text: staffName),
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        CustomTextField(
          isEnabled: true,
          controller: _billController,
          length: 6,
          textInputAction: TextInputAction.next,
          label: "Bill No.",
          textInputType: TextInputType.number,
        ),
        CustomTextField(
          isEnabled: true,
          controller: _orderController,
          textCapitalization: TextCapitalization.characters,
          textInputAction: TextInputAction.next,
          length: 10,
          label: "Order Number.",
          textInputType: TextInputType.text,
        ),
        CustomTextField(
          isEnabled: true,
          controller: _nameController,
          textInputAction: TextInputAction.done,
          length: 20,
          label: "Mobile / Name",
          textInputType: TextInputType.text,
        ),
        displayDateFilterOption(context),
        displayPaymentOption(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  appliedFilter = false;
                  _staffController.clear();
                  staffName = "All";
                  staffId = "";
                  _billController.clear();
                  _orderController.clear();
                  _nameController.clear();
                  _dateController.clear();
                  _paymentController.clear();
                  paymentMode = "All";
                  paymentStatusId = "";
                  paymentIconUrl = "";
                  currentDateSelected = 5;
                  _displayedStartDate = DateModel.getDateModelList
                      .elementAt(currentDateSelected)
                      .startDate;
                  _displayedEndDate = DateModel.getDateModelList
                      .elementAt(currentDateSelected)
                      .endDate;
                });
              },
              color: Colors.redAccent,
              minWidth: MediaQuery.of(context).size.width * 0.4,
              textColor: Colors.white,
              child: const Text("Reset"),
            ),
            MaterialButton(
              onPressed: () {
                String sId = staffId;
                String billNo = _billController.text;
                String orderNo = _orderController.text;
                String personDetails =
                    _nameController.text.toLowerCase().trim();

                widget.parentContext.read<SalesCubit>().fetchingFilter(
                      staffId: sId,
                      refNo: billNo,
                      orderNo: orderNo,
                      personDetails: personDetails,
                      startDate: _displayedStartDate,
                      endDate: _displayedEndDate,
                      paymentStatusId: paymentStatusId,
                    );
                setState(() {
                  if (staffName == "All" &&
                      paymentMode == "All" &&
                      billNo.isEmpty &&
                      personDetails.isEmpty &&
                      orderName.isEmpty &&
                      currentDateSelected == 5) {
                    appliedFilter = false;
                  } else {
                    appliedFilter = true;
                  }

                  billName = billNo;
                  orderName = orderNo;
                  personName = personDetails;
                });

                Navigator.of(context).pop();
              },
              color: Colors.indigo,
              minWidth: MediaQuery.of(context).size.width * 0.4,
              textColor: Colors.white,
              child: const Text("Search"),
            ),
          ],
        )
      ],
    );
  }

  Widget displayPaymentOption(BuildContext context) {
    return InkWell(
      onTap: () async {
        await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    height: 50,
                    child: const Text(
                      "Select Payment Type",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                  const Divider(
                    height: 0,
                  ),
                ],
              ),
              contentPadding: EdgeInsets.zero,
              titlePadding: EdgeInsets.zero,
              content: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    ApiResponseDataPaymentMethods paymentModel =
                        widget.paymentModeList.elementAt(index);

                    return InkWell(
                      onTap: () {
                        setState(() {
                          paymentStatusId = paymentModel.id != null
                              ? paymentModel.id.toString()
                              : "";
                          paymentMode = paymentModel.methodName ?? "";
                          paymentIconUrl = paymentModel.imageUrl ?? "";
                        });

                        Navigator.of(widget.parentContext).pop();
                      },
                      child: Container(
                        height: 50,
                        color: Colors.transparent,
                        padding: const EdgeInsets.only(left: 5),
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: SizedBox(
                            height: 25,
                            width: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.withOpacity(0.2),
                              child: CachedNetworkImage(
                                imageUrl: paymentModel.imageUrl ?? "",
                                errorWidget: (context, url, error) =>
                                    const SizedBox(
                                  width: 15,
                                  height: 15,
                                  child: Icon(
                                    Icons.currency_rupee,
                                    size: 15,
                                  ),
                                ),
                                width: 16,
                                height: 16,
                              ),
                            ),
                          ),
                          title: Text(paymentModel.methodName ?? ""),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, index) => Divider(
                    height: 0,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  itemCount: widget.staffList.length,
                ),
              ),
            );
          },
        );
      },
      child: Container(
        height: 60,
        padding: const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
        child: TextField(
          enabled: false,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            labelText: "Payment",
            prefix: SizedBox(
              height: 25,
              width: 25,
              child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: CachedNetworkImage(
                  imageUrl: paymentIconUrl ?? "",
                  errorWidget: (context, url, error) => const SizedBox(
                    height: 15,
                    width: 15,
                    child: Icon(
                      Icons.currency_rupee,
                      size: 10,
                    ),
                  ),
                  width: 16,
                  height: 16,
                ),
              ),
            ),
          ),
          controller: _paymentController =
              TextEditingController(text: "   $paymentMode"),
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget displayDateFilterOption(BuildContext context) {
    return InkWell(
      onTap: () async {
        await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              title: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    height: 50,
                    child: const Text(
                      "Choose date range",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                  const Divider(
                    height: 0,
                  ),
                ],
              ),
              contentPadding: EdgeInsets.zero,
              titlePadding: EdgeInsets.zero,
              content: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.51,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    DateModel dateModel =
                        DateModel.getDateModelList.elementAt(index);
                    return InkWell(
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (index == 7) {
                          Navigator.of(widget.parentContext).pop();
                          final DateTimeRange? customDateRange =
                              await showDateRangePicker(
                                  context: context,
                                  firstDate: DateTime.parse("2020-04-31"),
                                  lastDate: DateTime.parse("2026-04-31"));
                          if (customDateRange == null) {
                            return;
                          } else {
                            setState(() {
                              currentDateSelected = index;
                              _displayedStartDate =
                                  CustomDateGenerate.convertDateIntoName(
                                      date: customDateRange.start.toString(),
                                      formatPattern: "yyyy-MM-dd");
                              _displayedEndDate =
                                  CustomDateGenerate.convertDateIntoName(
                                      date: customDateRange.end.toString(),
                                      formatPattern: "yyyy-MM-dd");
                            });
                          }
                        } else {
                          setState(() {
                            currentDateSelected = index;
                            _displayedStartDate = dateModel.startDate;
                            _displayedEndDate = dateModel.endDate;
                          });
                          Navigator.of(widget.parentContext).pop();
                        }
                      },
                      child: Container(
                        height: 50,
                        color: currentDateSelected == index
                            ? Colors.lightBlue.withOpacity(0.2)
                            : Colors.transparent,
                        padding: const EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          title: Text(dateModel.displayText),
                          trailing: currentDateSelected == index
                              ? const Icon(
                                  Icons.check_circle,
                                  color: Colors.lightBlue,
                                )
                              : const SizedBox(),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, index) => Divider(
                    height: 0,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  itemCount: DateModel.getDateModelList.length,
                ),
              ),
            );
          },
        );
      },
      child: CustomTextField(
        isEnabled: false,
        controller: _dateController = TextEditingController(
            text:
                "${CustomDateGenerate.convertDateIntoName(date: _displayedStartDate)} - ${CustomDateGenerate.convertDateIntoName(date: _displayedEndDate)}"),
        textInputType: TextInputType.datetime,
        trailingIcon: const Icon(
          Icons.date_range,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget buildAlertDialog(BuildContext context) {
    return AlertDialog(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            height: 50,
            child: const Text(
              "Select Staff",
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),
          const Divider(
            height: 0,
          ),
        ],
      ),
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.7,
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (_, index) {
            ApiResponseDataStaffList staffModel =
                widget.staffList.elementAt(index);
            return InkWell(
              onTap: () {
                context
                    .read<SalesCubit>()
                    .updateFilterPosition(position: index);
                setState(() {
                  staffId = staffModel.id.toString();

                  staffName = staffModel.fullname.toString();
                });
                Navigator.of(widget.parentContext).pop();
              },
              child: Container(
                height: 50,
                color: Colors.transparent,
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  staffModel.fullname ?? "",
                ),
              ),
            );
          },
          separatorBuilder: (_, index) => Divider(
            height: 0,
            color: Colors.grey.withOpacity(0.2),
          ),
          itemCount: widget.staffList.length,
        ),
      ),
    );
  }
}
