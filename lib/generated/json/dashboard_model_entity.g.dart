import 'package:evital_sales/generated/json/base/json_convert_content.dart';
import 'package:evital_sales/model/dashboard/dashboard_model_entity.dart';

DashboardModelEntity $DashboardModelEntityFromJson(Map<String, dynamic> json) {
	final DashboardModelEntity dashboardModelEntity = DashboardModelEntity();
	final String? statusCode = jsonConvert.convert<String>(json['status_code']);
	if (statusCode != null) {
		dashboardModelEntity.statusCode = statusCode;
	}
	final String? statusMessage = jsonConvert.convert<String>(json['status_message']);
	if (statusMessage != null) {
		dashboardModelEntity.statusMessage = statusMessage;
	}
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		dashboardModelEntity.datetime = datetime;
	}
	final String? ngVersion = jsonConvert.convert<String>(json['ng_version']);
	if (ngVersion != null) {
		dashboardModelEntity.ngVersion = ngVersion;
	}
	final DashboardModelData? data = jsonConvert.convert<DashboardModelData>(json['data']);
	if (data != null) {
		dashboardModelEntity.data = data;
	}
	return dashboardModelEntity;
}

Map<String, dynamic> $DashboardModelEntityToJson(DashboardModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status_code'] = entity.statusCode;
	data['status_message'] = entity.statusMessage;
	data['datetime'] = entity.datetime;
	data['ng_version'] = entity.ngVersion;
	data['data'] = entity.data?.toJson();
	return data;
}

DashboardModelData $DashboardModelDataFromJson(Map<String, dynamic> json) {
	final DashboardModelData dashboardModelData = DashboardModelData();
	final DashboardModelDataMedicines? medicines = jsonConvert.convert<DashboardModelDataMedicines>(json['medicines']);
	if (medicines != null) {
		dashboardModelData.medicines = medicines;
	}
	final List<dynamic>? customers = jsonConvert.convertListNotNull<dynamic>(json['customers']);
	if (customers != null) {
		dashboardModelData.customers = customers;
	}
	final List<dynamic>? distributors = jsonConvert.convertListNotNull<dynamic>(json['distributors']);
	if (distributors != null) {
		dashboardModelData.distributors = distributors;
	}
	return dashboardModelData;
}

Map<String, dynamic> $DashboardModelDataToJson(DashboardModelData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['medicines'] = entity.medicines?.toJson();
	data['customers'] =  entity.customers;
	data['distributors'] =  entity.distributors;
	return data;
}

DashboardModelDataMedicines $DashboardModelDataMedicinesFromJson(Map<String, dynamic> json) {
	final DashboardModelDataMedicines dashboardModelDataMedicines = DashboardModelDataMedicines();
	final String? searchType = jsonConvert.convert<String>(json['search_type']);
	if (searchType != null) {
		dashboardModelDataMedicines.searchType = searchType;
	}
	final List<dynamic>? didYouMeanResult = jsonConvert.convertListNotNull<dynamic>(json['did_you_mean_result']);
	if (didYouMeanResult != null) {
		dashboardModelDataMedicines.didYouMeanResult = didYouMeanResult;
	}
	final List<DashboardModelDataMedicinesResult>? result = jsonConvert.convertListNotNull<DashboardModelDataMedicinesResult>(json['result']);
	if (result != null) {
		dashboardModelDataMedicines.result = result;
	}
	return dashboardModelDataMedicines;
}

Map<String, dynamic> $DashboardModelDataMedicinesToJson(DashboardModelDataMedicines entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['search_type'] = entity.searchType;
	data['did_you_mean_result'] =  entity.didYouMeanResult;
	data['result'] =  entity.result?.map((v) => v.toJson()).toList();
	return data;
}

DashboardModelDataMedicinesResult $DashboardModelDataMedicinesResultFromJson(Map<String, dynamic> json) {
	final DashboardModelDataMedicinesResult dashboardModelDataMedicinesResult = DashboardModelDataMedicinesResult();
	final String? medicineName = jsonConvert.convert<String>(json['medicine_name']);
	if (medicineName != null) {
		dashboardModelDataMedicinesResult.medicineName = medicineName;
	}
	final String? content = jsonConvert.convert<String>(json['content']);
	if (content != null) {
		dashboardModelDataMedicinesResult.content = content;
	}
	final int? mrp = jsonConvert.convert<int>(json['mrp']);
	if (mrp != null) {
		dashboardModelDataMedicinesResult.mrp = mrp;
	}
	final String? price = jsonConvert.convert<String>(json['price']);
	if (price != null) {
		dashboardModelDataMedicinesResult.price = price;
	}
	final String? slug = jsonConvert.convert<String>(json['slug']);
	if (slug != null) {
		dashboardModelDataMedicinesResult.slug = slug;
	}
	final int? medicineId = jsonConvert.convert<int>(json['medicine_id']);
	if (medicineId != null) {
		dashboardModelDataMedicinesResult.medicineId = medicineId;
	}
	final String? packingSize = jsonConvert.convert<String>(json['packing_size']);
	if (packingSize != null) {
		dashboardModelDataMedicinesResult.packingSize = packingSize;
	}
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		dashboardModelDataMedicinesResult.size = size;
	}
	final String? manufacturerName = jsonConvert.convert<String>(json['manufacturer_name']);
	if (manufacturerName != null) {
		dashboardModelDataMedicinesResult.manufacturerName = manufacturerName;
	}
	final String? approved = jsonConvert.convert<String>(json['approved']);
	if (approved != null) {
		dashboardModelDataMedicinesResult.approved = approved;
	}
	final String? medicineType = jsonConvert.convert<String>(json['medicine_type']);
	if (medicineType != null) {
		dashboardModelDataMedicinesResult.medicineType = medicineType;
	}
	final String? gtinNumber = jsonConvert.convert<String>(json['gtin_number']);
	if (gtinNumber != null) {
		dashboardModelDataMedicinesResult.gtinNumber = gtinNumber;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		dashboardModelDataMedicinesResult.image = image;
	}
	final String? medicineNameSuggest = jsonConvert.convert<String>(json['medicine_name_suggest']);
	if (medicineNameSuggest != null) {
		dashboardModelDataMedicinesResult.medicineNameSuggest = medicineNameSuggest;
	}
	final String? packSize = jsonConvert.convert<String>(json['pack_size']);
	if (packSize != null) {
		dashboardModelDataMedicinesResult.packSize = packSize;
	}
	final int? gstPercentage = jsonConvert.convert<int>(json['gst_percentage']);
	if (gstPercentage != null) {
		dashboardModelDataMedicinesResult.gstPercentage = gstPercentage;
	}
	final String? availableForPatient = jsonConvert.convert<String>(json['available_for_patient']);
	if (availableForPatient != null) {
		dashboardModelDataMedicinesResult.availableForPatient = availableForPatient;
	}
	final String? scheduleType = jsonConvert.convert<String>(json['schedule_type']);
	if (scheduleType != null) {
		dashboardModelDataMedicinesResult.scheduleType = scheduleType;
	}
	final String? location = jsonConvert.convert<String>(json['location']);
	if (location != null) {
		dashboardModelDataMedicinesResult.location = location;
	}
	final int? saleDiscount = jsonConvert.convert<int>(json['sale_discount']);
	if (saleDiscount != null) {
		dashboardModelDataMedicinesResult.saleDiscount = saleDiscount;
	}
	final int? saleB2bDiscount = jsonConvert.convert<int>(json['sale_b2b_discount']);
	if (saleB2bDiscount != null) {
		dashboardModelDataMedicinesResult.saleB2bDiscount = saleB2bDiscount;
	}
	final int? saleCount = jsonConvert.convert<int>(json['sale_count']);
	if (saleCount != null) {
		dashboardModelDataMedicinesResult.saleCount = saleCount;
	}
	final int? minQuantity = jsonConvert.convert<int>(json['min_quantity']);
	if (minQuantity != null) {
		dashboardModelDataMedicinesResult.minQuantity = minQuantity;
	}
	final int? maxQuantity = jsonConvert.convert<int>(json['max_quantity']);
	if (maxQuantity != null) {
		dashboardModelDataMedicinesResult.maxQuantity = maxQuantity;
	}
	final int? cessPercentage = jsonConvert.convert<int>(json['cess_percentage']);
	if (cessPercentage != null) {
		dashboardModelDataMedicinesResult.cessPercentage = cessPercentage;
	}
	final String? lockDiscount = jsonConvert.convert<String>(json['lock_discount']);
	if (lockDiscount != null) {
		dashboardModelDataMedicinesResult.lockDiscount = lockDiscount;
	}
	final String? lockB2bDiscount = jsonConvert.convert<String>(json['lock_b2b_discount']);
	if (lockB2bDiscount != null) {
		dashboardModelDataMedicinesResult.lockB2bDiscount = lockB2bDiscount;
	}
	final String? sellInLoose = jsonConvert.convert<String>(json['sell_in_loose']);
	if (sellInLoose != null) {
		dashboardModelDataMedicinesResult.sellInLoose = sellInLoose;
	}
	final String? directions = jsonConvert.convert<String>(json['directions']);
	if (directions != null) {
		dashboardModelDataMedicinesResult.directions = directions;
	}
	final int? inventoryId = jsonConvert.convert<int>(json['inventory_id']);
	if (inventoryId != null) {
		dashboardModelDataMedicinesResult.inventoryId = inventoryId;
	}
	final int? quantity = jsonConvert.convert<int>(json['quantity']);
	if (quantity != null) {
		dashboardModelDataMedicinesResult.quantity = quantity;
	}
	final String? discontinued = jsonConvert.convert<String>(json['discontinued']);
	if (discontinued != null) {
		dashboardModelDataMedicinesResult.discontinued = discontinued;
	}
	final String? addedToShortbook = jsonConvert.convert<String>(json['added_to_shortbook']);
	if (addedToShortbook != null) {
		dashboardModelDataMedicinesResult.addedToShortbook = addedToShortbook;
	}
	final String? level = jsonConvert.convert<String>(json['level']);
	if (level != null) {
		dashboardModelDataMedicinesResult.level = level;
	}
	return dashboardModelDataMedicinesResult;
}

Map<String, dynamic> $DashboardModelDataMedicinesResultToJson(DashboardModelDataMedicinesResult entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['medicine_name'] = entity.medicineName;
	data['content'] = entity.content;
	data['mrp'] = entity.mrp;
	data['price'] = entity.price;
	data['slug'] = entity.slug;
	data['medicine_id'] = entity.medicineId;
	data['packing_size'] = entity.packingSize;
	data['size'] = entity.size;
	data['manufacturer_name'] = entity.manufacturerName;
	data['approved'] = entity.approved;
	data['medicine_type'] = entity.medicineType;
	data['gtin_number'] = entity.gtinNumber;
	data['image'] = entity.image;
	data['medicine_name_suggest'] = entity.medicineNameSuggest;
	data['pack_size'] = entity.packSize;
	data['gst_percentage'] = entity.gstPercentage;
	data['available_for_patient'] = entity.availableForPatient;
	data['schedule_type'] = entity.scheduleType;
	data['location'] = entity.location;
	data['sale_discount'] = entity.saleDiscount;
	data['sale_b2b_discount'] = entity.saleB2bDiscount;
	data['sale_count'] = entity.saleCount;
	data['min_quantity'] = entity.minQuantity;
	data['max_quantity'] = entity.maxQuantity;
	data['cess_percentage'] = entity.cessPercentage;
	data['lock_discount'] = entity.lockDiscount;
	data['lock_b2b_discount'] = entity.lockB2bDiscount;
	data['sell_in_loose'] = entity.sellInLoose;
	data['directions'] = entity.directions;
	data['inventory_id'] = entity.inventoryId;
	data['quantity'] = entity.quantity;
	data['discontinued'] = entity.discontinued;
	data['added_to_shortbook'] = entity.addedToShortbook;
	data['level'] = entity.level;
	return data;
}