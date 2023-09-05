import 'package:evital_sales/model/api_response_entity.dart';

import '../../model/filter_model.dart';

abstract class SalesState {}

class InitialState extends SalesState {}

class SalesSuccessState extends SalesState {
  ApiResponseEntity apiResponseEntity;
  List<SortingModel>? sortedList;
  int? selectedPosition;
  bool isLoadingMore;
  bool? isSortingOrFilterApplied;
  int? filterSelectedPosition;
  bool? isFilterApplied;

  SalesSuccessState({
    required this.apiResponseEntity,
    required this.isLoadingMore,
    this.sortedList,
    this.selectedPosition,
    this.isSortingOrFilterApplied,
    this.filterSelectedPosition,
    this.isFilterApplied,
  });
}

class SalesFailState extends SalesState {
  String? statusCode;
  String? statusMessage;
  String? exceptionMessage;

  SalesFailState({
    this.statusCode,
    this.statusMessage,
    this.exceptionMessage,
  });
}

class SalesEmptyState extends SalesState {}

class SalesFilterState extends SalesState {
  int filterPosition;

  SalesFilterState({required this.filterPosition});
}
