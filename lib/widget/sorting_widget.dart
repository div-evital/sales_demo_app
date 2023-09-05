import 'package:evital_sales/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/sales/sales_cubit.dart';
import '../model/filter_model.dart';
import 'empty_widget.dart';

class SortingOptionWidget extends StatelessWidget {
  final BuildContext parentContext;
  final List<SortingModel> sortedList;
  final int selectedPosition;

  const SortingOptionWidget({
    super.key,
    required this.parentContext,
    required this.sortedList,
    required this.selectedPosition,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 15,
            top: 20,
            bottom: 10,
          ),
          alignment: Alignment.centerLeft,
          child: const Text(
            "Sort by",
            style: TextStyle(color: Colors.lightBlue),
          ),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.2),
          height: 0,
        ),
        Expanded(
          child: sortedList.isEmpty
              ? const EmptyWidget(
                  displayMessage: "No any sorting option found",
                )
              : ListView.separated(
                  itemCount: sortedList.length,
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                        parentContext
                            .read<SalesCubit>()
                            .updateSorting(position: index);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        color: index == selectedPosition
                            ? Colors.lightBlue.withOpacity(0.2)
                            : Colors.transparent,
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 0,
                          right: 10,
                          bottom: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                sortedList.elementAt(index).name ?? "Fetching"),
                            index == selectedPosition
                                ? const Icon(
                                    Icons.check_circle,
                                    color: Colors.blue,
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(
                    height: 0,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  padding: EdgeInsets.zero,
                ),
        ),
      ],
    );
  }
}
