// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;
import 'package:evital_sales/model/api_response_entity.dart';
import 'package:evital_sales/model/dashboard/dashboard_model_entity.dart';
import 'package:evital_sales/model/search/search_model_entity.dart';
import 'package:evital_sales/model/view_model/sales_view_entity.dart';

JsonConvert jsonConvert = JsonConvert();
typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);

class JsonConvert {
	static final Map<String, JsonConvertFunction> _convertFuncMap = {
		(ApiResponseEntity).toString(): ApiResponseEntity.fromJson,
		(ApiResponseData).toString(): ApiResponseData.fromJson,
		(ApiResponseDataResults).toString(): ApiResponseDataResults.fromJson,
		(ApiResponseDataResultsReferenceOrderResults).toString(): ApiResponseDataResultsReferenceOrderResults.fromJson,
		(ApiResponseDataStaffList).toString(): ApiResponseDataStaffList.fromJson,
		(ApiResponseDataPaymentMethods).toString(): ApiResponseDataPaymentMethods.fromJson,
		(ApiResponseDataAdjustmentPaymentMethods).toString(): ApiResponseDataAdjustmentPaymentMethods.fromJson,
		(DashboardModelEntity).toString(): DashboardModelEntity.fromJson,
		(DashboardModelData).toString(): DashboardModelData.fromJson,
		(DashboardModelDataMedicines).toString(): DashboardModelDataMedicines.fromJson,
		(DashboardModelDataMedicinesResult).toString(): DashboardModelDataMedicinesResult.fromJson,
		(SearchModelEntity).toString(): SearchModelEntity.fromJson,
		(SearchModelData).toString(): SearchModelData.fromJson,
		(SearchModelDataResult).toString(): SearchModelDataResult.fromJson,
		(SalesViewEntity).toString(): SalesViewEntity.fromJson,
		(SalesViewData).toString(): SalesViewData.fromJson,
		(SalesViewDataCustomerRegisteredChemistDetails).toString(): SalesViewDataCustomerRegisteredChemistDetails.fromJson,
		(SalesViewDataDeliveryInfo).toString(): SalesViewDataDeliveryInfo.fromJson,
		(SalesViewDataItems).toString(): SalesViewDataItems.fromJson,
		(SalesViewDataCustomerDetails).toString(): SalesViewDataCustomerDetails.fromJson,
		(SalesViewDataBillingForDetails).toString(): SalesViewDataBillingForDetails.fromJson,
		(SalesViewDataSettingResults).toString(): SalesViewDataSettingResults.fromJson,
		(SalesViewDataPaymentMethods).toString(): SalesViewDataPaymentMethods.fromJson,
		(SalesViewDataAdjustmentPaymentMethods).toString(): SalesViewDataAdjustmentPaymentMethods.fromJson,
		(SalesViewDataMedicineReminderDetails).toString(): SalesViewDataMedicineReminderDetails.fromJson,
		(SalesViewDataStaffList).toString(): SalesViewDataStaffList.fromJson,
		(SalesViewDataFamilyMemberList).toString(): SalesViewDataFamilyMemberList.fromJson,
		(SalesViewDataFamilyMemberListAddresses).toString(): SalesViewDataFamilyMemberListAddresses.fromJson,
		(SalesViewDataLoyaltyPointAllocations).toString(): SalesViewDataLoyaltyPointAllocations.fromJson,
	};

  T? convert<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    return asT<T>(value);
  }

  List<T?>? convertList<T>(List<dynamic>? value) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => asT<T>(e)).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) => asT<T>(e)!).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  T? asT<T extends Object?>(dynamic value) {
    if (value is T) {
      return value;
    }
    final String type = T.toString();
    try {
      final String valueS = value.toString();
      if (type == "String") {
        return valueS as T;
      } else if (type == "int") {
        final int? intValue = int.tryParse(valueS);
        if (intValue == null) {
          return double.tryParse(valueS)?.toInt() as T?;
        } else {
          return intValue as T;
        }
      } else if (type == "double") {
        return double.parse(valueS) as T;
      } else if (type == "DateTime") {
        return DateTime.parse(valueS) as T;
      } else if (type == "bool") {
        if (valueS == '0' || valueS == '1') {
          return (valueS == '1') as T;
        }
        return (valueS == 'true') as T;
      } else if (type == "Map" || type.startsWith("Map<")) {
        return value as T;
      } else {
        if (_convertFuncMap.containsKey(type)) {
          return _convertFuncMap[type]!(value) as T;
        } else {
          throw UnimplementedError('$type unimplemented');
        }
      }
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return null;
    }
  }

	//list is returned by type
	static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
		if(<ApiResponseEntity>[] is M){
			return data.map<ApiResponseEntity>((Map<String, dynamic> e) => ApiResponseEntity.fromJson(e)).toList() as M;
		}
		if(<ApiResponseData>[] is M){
			return data.map<ApiResponseData>((Map<String, dynamic> e) => ApiResponseData.fromJson(e)).toList() as M;
		}
		if(<ApiResponseDataResults>[] is M){
			return data.map<ApiResponseDataResults>((Map<String, dynamic> e) => ApiResponseDataResults.fromJson(e)).toList() as M;
		}
		if(<ApiResponseDataResultsReferenceOrderResults>[] is M){
			return data.map<ApiResponseDataResultsReferenceOrderResults>((Map<String, dynamic> e) => ApiResponseDataResultsReferenceOrderResults.fromJson(e)).toList() as M;
		}
		if(<ApiResponseDataStaffList>[] is M){
			return data.map<ApiResponseDataStaffList>((Map<String, dynamic> e) => ApiResponseDataStaffList.fromJson(e)).toList() as M;
		}
		if(<ApiResponseDataPaymentMethods>[] is M){
			return data.map<ApiResponseDataPaymentMethods>((Map<String, dynamic> e) => ApiResponseDataPaymentMethods.fromJson(e)).toList() as M;
		}
		if(<ApiResponseDataAdjustmentPaymentMethods>[] is M){
			return data.map<ApiResponseDataAdjustmentPaymentMethods>((Map<String, dynamic> e) => ApiResponseDataAdjustmentPaymentMethods.fromJson(e)).toList() as M;
		}
		if(<DashboardModelEntity>[] is M){
			return data.map<DashboardModelEntity>((Map<String, dynamic> e) => DashboardModelEntity.fromJson(e)).toList() as M;
		}
		if(<DashboardModelData>[] is M){
			return data.map<DashboardModelData>((Map<String, dynamic> e) => DashboardModelData.fromJson(e)).toList() as M;
		}
		if(<DashboardModelDataMedicines>[] is M){
			return data.map<DashboardModelDataMedicines>((Map<String, dynamic> e) => DashboardModelDataMedicines.fromJson(e)).toList() as M;
		}
		if(<DashboardModelDataMedicinesResult>[] is M){
			return data.map<DashboardModelDataMedicinesResult>((Map<String, dynamic> e) => DashboardModelDataMedicinesResult.fromJson(e)).toList() as M;
		}
		if(<SearchModelEntity>[] is M){
			return data.map<SearchModelEntity>((Map<String, dynamic> e) => SearchModelEntity.fromJson(e)).toList() as M;
		}
		if(<SearchModelData>[] is M){
			return data.map<SearchModelData>((Map<String, dynamic> e) => SearchModelData.fromJson(e)).toList() as M;
		}
		if(<SearchModelDataResult>[] is M){
			return data.map<SearchModelDataResult>((Map<String, dynamic> e) => SearchModelDataResult.fromJson(e)).toList() as M;
		}
		if(<SalesViewEntity>[] is M){
			return data.map<SalesViewEntity>((Map<String, dynamic> e) => SalesViewEntity.fromJson(e)).toList() as M;
		}
		if(<SalesViewData>[] is M){
			return data.map<SalesViewData>((Map<String, dynamic> e) => SalesViewData.fromJson(e)).toList() as M;
		}
		if(<SalesViewDataCustomerRegisteredChemistDetails>[] is M){
			return data.map<SalesViewDataCustomerRegisteredChemistDetails>((Map<String, dynamic> e) => SalesViewDataCustomerRegisteredChemistDetails.fromJson(e)).toList() as M;
		}
		if(<SalesViewDataDeliveryInfo>[] is M){
			return data.map<SalesViewDataDeliveryInfo>((Map<String, dynamic> e) => SalesViewDataDeliveryInfo.fromJson(e)).toList() as M;
		}
		if(<SalesViewDataItems>[] is M){
			return data.map<SalesViewDataItems>((Map<String, dynamic> e) => SalesViewDataItems.fromJson(e)).toList() as M;
		}
		if(<SalesViewDataCustomerDetails>[] is M){
			return data.map<SalesViewDataCustomerDetails>((Map<String, dynamic> e) => SalesViewDataCustomerDetails.fromJson(e)).toList() as M;
		}
		if(<SalesViewDataBillingForDetails>[] is M){
			return data.map<SalesViewDataBillingForDetails>((Map<String, dynamic> e) => SalesViewDataBillingForDetails.fromJson(e)).toList() as M;
		}
		if(<SalesViewDataSettingResults>[] is M){
			return data.map<SalesViewDataSettingResults>((Map<String, dynamic> e) => SalesViewDataSettingResults.fromJson(e)).toList() as M;
		}
		if(<SalesViewDataPaymentMethods>[] is M){
			return data.map<SalesViewDataPaymentMethods>((Map<String, dynamic> e) => SalesViewDataPaymentMethods.fromJson(e)).toList() as M;
		}
		if(<SalesViewDataAdjustmentPaymentMethods>[] is M){
			return data.map<SalesViewDataAdjustmentPaymentMethods>((Map<String, dynamic> e) => SalesViewDataAdjustmentPaymentMethods.fromJson(e)).toList() as M;
		}
		if(<SalesViewDataMedicineReminderDetails>[] is M){
			return data.map<SalesViewDataMedicineReminderDetails>((Map<String, dynamic> e) => SalesViewDataMedicineReminderDetails.fromJson(e)).toList() as M;
		}
		if(<SalesViewDataStaffList>[] is M){
			return data.map<SalesViewDataStaffList>((Map<String, dynamic> e) => SalesViewDataStaffList.fromJson(e)).toList() as M;
		}
		if(<SalesViewDataFamilyMemberList>[] is M){
			return data.map<SalesViewDataFamilyMemberList>((Map<String, dynamic> e) => SalesViewDataFamilyMemberList.fromJson(e)).toList() as M;
		}
		if(<SalesViewDataFamilyMemberListAddresses>[] is M){
			return data.map<SalesViewDataFamilyMemberListAddresses>((Map<String, dynamic> e) => SalesViewDataFamilyMemberListAddresses.fromJson(e)).toList() as M;
		}
		if(<SalesViewDataLoyaltyPointAllocations>[] is M){
			return data.map<SalesViewDataLoyaltyPointAllocations>((Map<String, dynamic> e) => SalesViewDataLoyaltyPointAllocations.fromJson(e)).toList() as M;
		}

		debugPrint("${M.toString()} not found");
	
		return null;
}

	static M? fromJsonAsT<M>(dynamic json) {
		if (json is List) {
			return _getListChildType<M>(json.map((e) => e as Map<String, dynamic>).toList());
		} else {
			return jsonConvert.asT<M>(json);
		}
	}
}