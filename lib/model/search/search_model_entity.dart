import 'package:evital_sales/generated/json/base/json_field.dart';
import 'package:evital_sales/generated/json/search_model_entity.g.dart';
import 'dart:convert';
export 'package:evital_sales/generated/json/search_model_entity.g.dart';

@JsonSerializable()
class SearchModelEntity {
  @JSONField(name: "status_code")
  String? statusCode;
  @JSONField(name: "status_message")
  String? statusMessage;
  String? datetime;
  @JSONField(name: "ng_version")
  String? ngVersion;
  SearchModelData? data;

  SearchModelEntity();

  factory SearchModelEntity.fromJson(Map<String, dynamic> json) =>
      $SearchModelEntityFromJson(json);

  Map<String, dynamic> toJson() => $SearchModelEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SearchModelData {
  @JSONField(name: "search_type")
  String? searchType;
  @JSONField(name: "did_you_mean_result")
  List<dynamic>? didYouMeanResult;
  List<SearchModelDataResult>? result;

  SearchModelData();

  factory SearchModelData.fromJson(Map<String, dynamic> json) =>
      $SearchModelDataFromJson(json);

  Map<String, dynamic> toJson() => $SearchModelDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SearchModelDataResult {
  @JSONField(name: "medicine_name")
  String? medicineName;
  String? content;
  int? mrp;
  String? price;
  String? slug;
  @JSONField(name: "medicine_id")
  int? medicineId;
  @JSONField(name: "packing_size")
  String? packingSize;
  String? size;
  @JSONField(name: "manufacturer_name")
  String? manufacturerName;
  String? approved;
  @JSONField(name: "medicine_type")
  String? medicineType;
  @JSONField(name: "gtin_number")
  String? gtinNumber;
  String? image;
  @JSONField(name: "medicine_name_suggest")
  String? medicineNameSuggest;
  @JSONField(name: "pack_size")
  String? packSize;
  @JSONField(name: "gst_percentage")
  int? gstPercentage;
  @JSONField(name: "schedule_type")
  String? scheduleType;
  @JSONField(name: "available_for_patient")
  String? availableForPatient;
  String? location;
  @JSONField(name: "sale_discount")
  int? saleDiscount;
  @JSONField(name: "sale_b2b_discount")
  int? saleB2bDiscount;
  @JSONField(name: "sale_count")
  int? saleCount;
  @JSONField(name: "min_quantity")
  int? minQuantity;
  @JSONField(name: "max_quantity")
  int? maxQuantity;
  @JSONField(name: "cess_percentage")
  int? cessPercentage;
  @JSONField(name: "lock_discount")
  String? lockDiscount;
  @JSONField(name: "lock_b2b_discount")
  String? lockB2bDiscount;
  @JSONField(name: "sell_in_loose")
  String? sellInLoose;
  String? directions;
  @JSONField(name: "inventory_id")
  int? inventoryId;
  int? quantity;
  String? discontinued;

  SearchModelDataResult();

  factory SearchModelDataResult.fromJson(Map<String, dynamic> json) =>
      $SearchModelDataResultFromJson(json);

  Map<String, dynamic> toJson() => $SearchModelDataResultToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
