import 'package:evital_sales/generated/json/base/json_field.dart';
import 'package:evital_sales/generated/json/dashboard_model_entity.g.dart';
import 'dart:convert';
export 'package:evital_sales/generated/json/dashboard_model_entity.g.dart';

@JsonSerializable()
class DashboardModelEntity {
  @JSONField(name: "status_code")
  String? statusCode;
  @JSONField(name: "status_message")
  String? statusMessage;
  String? datetime;
  @JSONField(name: "ng_version")
  String? ngVersion;
  DashboardModelData? data;

  DashboardModelEntity();

  factory DashboardModelEntity.fromJson(Map<String, dynamic> json) =>
      $DashboardModelEntityFromJson(json);

  Map<String, dynamic> toJson() => $DashboardModelEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DashboardModelData {
  DashboardModelDataMedicines? medicines;
  List<dynamic>? customers;
  List<dynamic>? distributors;

  DashboardModelData();

  factory DashboardModelData.fromJson(Map<String, dynamic> json) =>
      $DashboardModelDataFromJson(json);

  Map<String, dynamic> toJson() => $DashboardModelDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DashboardModelDataMedicines {
  @JSONField(name: "search_type")
  String? searchType;
  @JSONField(name: "did_you_mean_result")
  List<dynamic>? didYouMeanResult;
  List<DashboardModelDataMedicinesResult>? result;

  DashboardModelDataMedicines();

  factory DashboardModelDataMedicines.fromJson(Map<String, dynamic> json) =>
      $DashboardModelDataMedicinesFromJson(json);

  Map<String, dynamic> toJson() => $DashboardModelDataMedicinesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DashboardModelDataMedicinesResult {
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
  @JSONField(name: "available_for_patient")
  String? availableForPatient;
  @JSONField(name: "schedule_type")
  String? scheduleType;
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
  @JSONField(name: "added_to_shortbook")
  String? addedToShortbook;
  String? level;

  DashboardModelDataMedicinesResult();

  factory DashboardModelDataMedicinesResult.fromJson(
          Map<String, dynamic> json) =>
      $DashboardModelDataMedicinesResultFromJson(json);

  Map<String, dynamic> toJson() =>
      $DashboardModelDataMedicinesResultToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
