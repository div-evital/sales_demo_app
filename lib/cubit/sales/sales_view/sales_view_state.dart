import 'package:evital_sales/model/view_model/sales_view_entity.dart';

abstract class SalesViewState {}

class SalesViewInitialState extends SalesViewState {}

class SalesViewLoadingState extends SalesViewState {}

class SalesViewSuccessState extends SalesViewState {
  SalesViewEntity salesViewEntity;

  SalesViewSuccessState({required this.salesViewEntity});
}

class SalesViewFailState extends SalesViewState {
  final String statusCode;
  final String statusMessage;

  SalesViewFailState({
    required this.statusCode,
    required this.statusMessage,
  });
}

class SalesViewEmptyState extends SalesViewState {}
