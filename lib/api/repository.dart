import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:evital_sales/model/api_response_entity.dart';
import 'package:evital_sales/model/dashboard/dashboard_model_entity.dart';
import 'package:evital_sales/model/search/search_model_entity.dart';
import 'package:evital_sales/model/view_model/sales_view_entity.dart';

import '../utils/app_strings.dart';
import 'api_service.dart';

class Repository {
  Repository._();

  static final Repository _repository = Repository._();

  factory Repository() => _repository;
  final Dio _dio = Dio(
    BaseOptions(
      persistentConnection: true,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    ),
  )..interceptors.addAll(
      [
        InterceptorsWrapper(
          onRequest: (options, handler) {
            log(options.uri.toString(), name: "Request-URL");
            log(options.data.toString(), name: "Payload");
            handler.next(options);
          },
          onResponse: (e, handler) {
            log(e.statusCode.toString(), name: "Status-Code");
            log(e.statusMessage ?? "", name: "Status-Message");
            log(e.data.toString() ?? "", name: "data");
            handler.next(e);
          },
          onError: (e, handler) {
            log(e.type.toString(), name: "Error-Type");
            log(e.error.toString() ?? "", name: "Error");
            log(e.message ?? "", name: "Error-Message");
            handler.next(e);
          },
        ),
      ],
    );

  Future<ApiResponseEntity> getSalesApiResponse({
    required int page,
    required String id,
    String? sort,
    String? orderBy,
    String? orderNumber,
    String? refNo,
    String? nameOrMobile,
    String? startDate,
    String? endDate,
    String? paymentId,
  }) async {
    final apiResponse =
        await ApiService(_dio, AppStrings.eVitalV3SalesUrl).getResponse(
      AppStrings.setSalesApiPayload(
        page: page,
        sort: sort ?? "",
        orderBy: orderBy ?? "",
        searchId: id,
        orderNumber: orderNumber ?? "",
        refNo: refNo ?? "",
        nameOrMobile: nameOrMobile ?? "",
        startDate: startDate,
        endDate: endDate,
        paymentId: paymentId,
      ),
    );

    return apiResponse;
  }

  Future<DashboardModelEntity> getDashboardApiResponse(
      {required String serialNo}) async {
    final apiResponse = await ApiService(_dio, AppStrings.eVitalDashboardSearch)
        .getMasterSearchResponse(
            AppStrings.setDashboardApiPayload(serialNo: serialNo));
    return apiResponse;
  }

  Future<SearchModelEntity> getSearchResponse(
      {required String searchQuery}) async {
    final apiResponse = await ApiService(_dio, AppStrings.eVitalSearchUrl)
        .getSearchProductResponse(
            AppStrings.setSearchPayload(searchQuery: searchQuery));
    return apiResponse;
  }

  Future<SalesViewEntity> sendPostSalesViewRequest(
      {required String orderId}) async {
    final apiResponse = await ApiService(_dio, AppStrings.eVitalV3SalesUrl)
        .getSalesViewResponse(AppStrings.setSalesViewPayload(orderId: orderId));
    return apiResponse;
  }
}
