// ignore_for_file: use_build_context_synchronously

import 'package:evital_sales/cubit/internet/internet_cubit.dart';
import 'package:evital_sales/cubit/internet/internet_state.dart';
import 'package:evital_sales/cubit/sales/sales_cubit.dart';
import 'package:evital_sales/cubit/sales/sales_state.dart';
import 'package:evital_sales/model/api_response_entity.dart';
import 'package:evital_sales/utils/app_nav_path.dart';
import 'package:evital_sales/utils/app_strings.dart';
import 'package:evital_sales/widget/custom_sales_widget.dart';
import 'package:evital_sales/widget/empty_widget.dart';
import 'package:evital_sales/widget/error_widget.dart';
import 'package:evital_sales/widget/bottom_view.dart';
import 'package:evital_sales/widget/filter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({super.key});

  @override
  State<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InternetCubit, InternetState>(
      listener: (context, state) {
        if (state == InternetState.disabled) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                "No Internet connectivity",
              ),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        if (state == InternetState.initial) {
          return showProgress();
        } else if (state == InternetState.enabled) {
          return onlineWidget(context);
        } else if (state == InternetState.disabled) {
          return offlineWidget(context);
        } else {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
            ),
          );
        }
      },
    );
  }

  Widget showProgress() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: const Center(child: CircularProgressIndicator()),
    );
  }

  Widget offlineWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: 100,
          child: Lottie.asset("assets/json/offline.json"),
        ),
      ),
    );
  }

  Widget onlineWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          padding: EdgeInsets.zero,
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Sales",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          BlocBuilder<SalesCubit, SalesState>(
            builder: (_, state) {
              if (state is SalesSuccessState) {
                return buildIconButton(state, context);
              }

              return const SizedBox();
            },
          )
        ],
      ),
      body: RefreshIndicator(
        color: Colors.indigo,
        backgroundColor: Colors.white,
        onRefresh: () async {
          await Future.delayed(
            const Duration(seconds: 2),
            () {
              context.read<SalesCubit>().refreshData();
            },
          );
        },
        child: displayApiContent(context),
      ),
    );
  }

  BlocBuilder<SalesCubit, SalesState> displayApiContent(BuildContext context) {
    return BlocBuilder<SalesCubit, SalesState>(
      builder: (_, state) {
        if (state is InitialState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SalesSuccessState) {
          return Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                height: 35,
                child: Row(
                  children: [
                    buildGestureDetector(context, state),
                    const Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.lightBlue,
                    ),
                    const Spacer(),
                    FilterWidgetState.appliedFilter == true
                        ? InkWell(
                            onTap: () {
                              FilterWidgetState.personName = "";
                              FilterWidgetState.orderName = "";
                              FilterWidgetState.staffName = "All";
                              FilterWidgetState.staffId = "";
                              FilterWidgetState.billName = "";
                              FilterWidgetState.appliedFilter = false;
                              FilterWidgetState.paymentStatusId = "";
                              FilterWidgetState.paymentIconUrl = "";
                              FilterWidgetState.paymentMode = "All";
                              FilterWidgetState.currentDateSelected = 5;
                              context.read<SalesCubit>().clearFilter();
                            },
                            child: Container(
                              padding: const EdgeInsets.only(right: 10),
                              child: const Row(
                                children: [
                                  Text(
                                    "Filters applied",
                                    style: TextStyle(color: Colors.lightBlue),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.close,
                                    size: 18,
                                    color: Colors.lightBlue,
                                  )
                                ],
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
              if (state.isSortingOrFilterApplied ?? false)
                const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              else
                buildExpanded(context, state),
              if (state.isLoadingMore)
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const CircularProgressIndicator(),
                )
            ],
          );
        } else if (state is SalesFailState) {
          return ErrorTextWidget(errorMessage: state.statusMessage ?? "");
        }
        return const SizedBox();
      },
    );
  }

  Widget buildExpanded(BuildContext context, SalesSuccessState state) {
    return Expanded(
      child: (state.apiResponseEntity.data?.results ?? []).isEmpty
          ? const EmptyWidget(
              displayMessage: "Not Found",
            )
          : ListView.separated(
              controller: context.read<SalesCubit>().scrollController,
              itemCount: state.apiResponseEntity.data?.results?.length ?? 0,
              itemBuilder: (context, index) {
                ApiResponseDataResults result =
                    (state.apiResponseEntity.data?.results ?? [])
                        .elementAt(index);

                return CustomSalesWidget(
                  results: result,
                  paymentMethods:
                      (state.apiResponseEntity.data?.paymentMethods ?? []),
                );
              },
              separatorBuilder: (BuildContext context, int index) => Divider(
                height: 0,
                color: Colors.grey.withOpacity(0.2),
              ),
            ),
    );
  }

  Widget buildIconButton(SalesSuccessState state, BuildContext context) {
    return IconButton(
      onPressed: () {
        final filterList = state.apiResponseEntity.data?.staffList ?? [];
        final paymentList = state.apiResponseEntity.data?.paymentMethods ?? [];
        if (filterList.indexWhere((element) => element.fullname == "All") ==
            0) {
          filterList.removeAt(0);

          filterList.insert(
              0,
              ApiResponseDataStaffList.fromJson(
                  AppStrings.fakeRecordAtStaffZeroPosition));
        } else if (paymentList
                .indexWhere((element) => element.methodName == "All") ==
            0) {
          paymentList.removeAt(0);
          paymentList.insert(
              0,
              ApiResponseDataPaymentMethods.fromJson(
                  AppStrings.fakeRecordAtPaymentZeroPosition));
        } else {
          filterList.insert(
              0,
              ApiResponseDataStaffList.fromJson(
                  AppStrings.fakeRecordAtStaffZeroPosition));
          paymentList.insert(
              0,
              ApiResponseDataPaymentMethods.fromJson(
                  AppStrings.fakeRecordAtPaymentZeroPosition));
        }

        ShowCustomBottomSheet.openFilterBottomSheet(
            paymentList: paymentList, context: context, staffList: filterList);
      },
      icon: const Icon(Icons.filter_alt),
      color: Colors.white,
    );
  }

  Widget buildGestureDetector(BuildContext context, SalesSuccessState state) {
    return GestureDetector(
      onTap: () => ShowCustomBottomSheet.openSortedBottomSheet(
          context: context,
          sortedList: state.sortedList ?? [],
          selectedPosition: state.selectedPosition ?? 0),
      child: Text(
        state.sortedList?.elementAt(state.selectedPosition ?? 0).name ?? "",
        style: const TextStyle(color: Colors.lightBlue),
      ),
    );
  }
}
