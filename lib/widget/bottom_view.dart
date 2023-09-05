import 'package:evital_sales/cubit/sales/sales_cubit.dart';
import 'package:evital_sales/model/api_response_entity.dart';
import 'package:evital_sales/model/filter_model.dart';
import 'package:evital_sales/widget/filter_widget.dart';
import 'package:evital_sales/widget/sorting_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ShowCustomBottomSheet {
  static Future openSortedBottomSheet(
      {required BuildContext context,
      required List<SortingModel> sortedList,
      required int selectedPosition}) async {
    await showMaterialModalBottomSheet(
      enableDrag: true,

      isDismissible: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      context: context,
      builder: (_) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: SortingOptionWidget(
              parentContext: context,
              sortedList: sortedList,
              selectedPosition: selectedPosition),
        );
      },
    );
  }

  static Future openFilterBottomSheet(
      {required BuildContext context,
      required List<ApiResponseDataStaffList> staffList,
      required List<ApiResponseDataPaymentMethods> paymentList}) async {
    await showMaterialModalBottomSheet(
      isDismissible: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      enableDrag: true,
      context: context,
      builder: (_) {
        return BlocProvider(
          create: (context) => SalesCubit(),
          child: FilterWidget(
            parentContext: context,
            paymentModeList: paymentList,
            staffList: staffList,
          ),
        );
      },
    );
  }
}
