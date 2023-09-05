import 'package:dio/dio.dart';
import 'package:evital_sales/model/api_response_entity.dart';
import 'package:evital_sales/model/search/search_model_entity.dart';
import 'package:evital_sales/model/view_model/sales_view_entity.dart';
import 'package:retrofit/retrofit.dart';

import '../model/dashboard/dashboard_model_entity.dart';
import '../utils/app_strings.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, String baseUrl) =>
      _ApiService(dio, baseUrl: baseUrl);

  @POST(AppStrings.listEndingUrl)
  Future<ApiResponseEntity> getResponse(@Body() Map<String, dynamic> body);

  @POST(AppStrings.masterSearchUrl)
  Future<DashboardModelEntity> getMasterSearchResponse(
      @Body() Map<String, dynamic> body);

  @POST(AppStrings.searchProductUrl)
  Future<SearchModelEntity> getSearchProductResponse(
      @Body() Map<String, dynamic> searchPayload);


  @POST(AppStrings.salesViewUrl)
  Future<SalesViewEntity> getSalesViewResponse(@Body() Map<String,dynamic> viewPayload);
}
