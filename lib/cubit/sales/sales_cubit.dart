import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:evital_sales/api/repository.dart';
import 'package:evital_sales/cubit/sales/sales_state.dart';
import 'package:evital_sales/model/api_response_entity.dart';
import 'package:evital_sales/model/date_model.dart';
import 'package:evital_sales/utils/filter_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SalesCubit extends Cubit<SalesState> {
  ApiResponseEntity _apiResponseEntity = ApiResponseEntity();
  final ScrollController scrollController = ScrollController();
  int _currentPage = 1;
  int _currentPosition = 0;
  int _filterPosition = 0;
  String _staffId = "";
  String _orderNumber = "";
  String _productSerialNo = "";
  String _paymentStatusId = "";
  String _refNo = "";
  String _personDetails = "";
  bool _isFiltered = false;
  String _startDate = "2023-04-30";
  String _endDate = "2024-03-31";
  final _sortedList = Sorting.sortingList;

  SalesCubit() : super(InitialState()) {
    try {
      fetchData();
      scrollController.addListener(_scrollConfig);
    } on DioException catch (e) {
      if (e.error is SocketException) {
        emit(SalesFailState(statusMessage: "Internet Exception"));
      }
      emit(SalesFailState(statusMessage: e.message));
    } catch (e) {
      emit(SalesFailState(exceptionMessage: "Something went wrong"));
    }
  }

  void fetchData() async {
    _apiResponseEntity = await Repository().getSalesApiResponse(
      page: _currentPage,
      sort: _sortedList.elementAt(_currentPosition).sort,
      orderBy: _sortedList.elementAt(_currentPosition).orderBy,
      id: _staffId,
      orderNumber: _orderNumber,
      refNo: _refNo,
      paymentId: _paymentStatusId,
      nameOrMobile: _personDetails,
      startDate: _startDate,
      endDate: _endDate,
    );
    if (_apiResponseEntity.statusCode == "404") {
      emit(SalesFailState(
          statusCode: _apiResponseEntity.statusCode ?? "404",
          statusMessage: _apiResponseEntity.statusMessage ?? "Gone Wrong"));
    } else {
      emit(SalesSuccessState(
        apiResponseEntity: _apiResponseEntity,
        isLoadingMore: false,
        selectedPosition: _currentPosition,
        sortedList: _sortedList,
        isFilterApplied: _isFiltered,
        isSortingOrFilterApplied: false,
      ));
    }
  }

  void _scrollConfig() {
    final currentScroll = scrollController.position.pixels;
    final maxScroll = scrollController.position.maxScrollExtent;
    if (currentScroll == maxScroll &&
        (_apiResponseEntity.data?.results?.length ?? 0) >= 20) {
      try {
        _fetchMoreData();
      } catch (e) {
        emit(SalesFailState(exceptionMessage: "Something went wrong"));
      }
    }
  }

  void _fetchMoreData() async {
    emit(SalesSuccessState(
        apiResponseEntity: _apiResponseEntity,
        isLoadingMore: true,
        isFilterApplied: _isFiltered,
        selectedPosition: _currentPosition,
        sortedList: _sortedList));

    _currentPage += 1;
    if (_currentPage <= 10) {
      final moreData = await Repository().getSalesApiResponse(
        page: _currentPage,
        sort: _sortedList.elementAt(_currentPosition).sort,
        orderBy: _sortedList.elementAt(_currentPosition).orderBy,
        id: _staffId,
        orderNumber: _orderNumber,
        refNo: _refNo,
        nameOrMobile: _personDetails,
        startDate: _startDate,
        endDate: _endDate,
        paymentId: _paymentStatusId,
      );

      if (moreData.data?.results != null) {
        _apiResponseEntity.data?.results?.addAll(
            moreData.data?.results as Iterable<ApiResponseDataResults>);
        emit(SalesSuccessState(
            apiResponseEntity: _apiResponseEntity,
            isLoadingMore: false,
            sortedList: _sortedList,
            isFilterApplied: _isFiltered,
            selectedPosition: _currentPosition));
      }
    } else {
      emit(SalesSuccessState(
          apiResponseEntity: _apiResponseEntity,
          isLoadingMore: false,
          selectedPosition: _currentPosition,
          sortedList: _sortedList));
    }
  }

  void updateSorting({required int position}) {
    _currentPosition = position;
    emit(SalesSuccessState(
      apiResponseEntity: _apiResponseEntity,
      isLoadingMore: false,
      selectedPosition: _currentPosition,
      sortedList: _sortedList,
      isSortingOrFilterApplied: true,
    ));
    _apiResponseEntity.data?.results?.clear();
    _currentPage = 1;
    fetchData();
  }

  void updateFilterPosition({required int position}) {
    _filterPosition = position;

    emit(SalesSuccessState(
      apiResponseEntity: _apiResponseEntity,
      isLoadingMore: false,
      selectedPosition: _currentPosition,
      sortedList: _sortedList,
      filterSelectedPosition: _filterPosition,
      isSortingOrFilterApplied: false,
    ));
  }

  void fetchingFilter(
      {String? orderNo,
      String? refNo,
      String? personDetails,
      String? startDate,
      String? endDate,
      String? paymentStatusId,
      String? staffId}) {
    _isFiltered = true;
    emit(SalesSuccessState(
      apiResponseEntity: _apiResponseEntity,
      isLoadingMore: false,
      selectedPosition: _currentPosition,
      sortedList: _sortedList,
      isFilterApplied: _isFiltered,
      isSortingOrFilterApplied: true,
    ));
    _currentPage = 1;
    _orderNumber = orderNo ?? "";
    _refNo = refNo ?? "";
    _personDetails = personDetails ?? "";
    _staffId = staffId ?? "";
    _startDate = startDate ?? "";
    _endDate = endDate ?? "";
    _paymentStatusId = paymentStatusId ?? "";

    _fetchingFilterData();
  }

  void _fetchingFilterData() async {
    (_apiResponseEntity.data?.results ?? []).clear();
    fetchData();
  }

  void clearFilter() {
    _isFiltered = false;
    _currentPosition = 0;
    _orderNumber = "";
    _paymentStatusId = "";
    _endDate = DateModel.getDateModelList.elementAt(4).endDate;
    _startDate = DateModel.getDateModelList.elementAt(4).startDate;
    _refNo = "";
    _personDetails = "";
    _paymentStatusId = "";
    _staffId = "";
    _currentPage = 1;
    emit(SalesSuccessState(
      apiResponseEntity: _apiResponseEntity,
      isLoadingMore: false,
      selectedPosition: _currentPosition,
      sortedList: _sortedList,
      isFilterApplied: _isFiltered,
      isSortingOrFilterApplied: true,
    ));
    fetchData();
  }

  void refreshData() {
    _isFiltered = false;
    _currentPosition = 0;
    _orderNumber = "";
    _paymentStatusId = "";
    _endDate = DateModel.getDateModelList.elementAt(4).endDate;
    _startDate = DateModel.getDateModelList.elementAt(4).startDate;
    _refNo = "";
    _personDetails = "";
    _paymentStatusId = "";
    _staffId = "";
    _currentPage = 1;
    fetchData();
  }
}
