import 'package:evital_sales/generated/json/base/json_convert_content.dart';
import 'package:evital_sales/model/search/search_model_entity.dart';

SearchModelEntity $SearchModelEntityFromJson(Map<String, dynamic> json) {
	final SearchModelEntity searchModelEntity = SearchModelEntity();
	final String? statusCode = jsonConvert.convert<String>(json['status_code']);
	if (statusCode != null) {
		searchModelEntity.statusCode = statusCode;
	}
	final String? statusMessage = jsonConvert.convert<String>(json['status_message']);
	if (statusMessage != null) {
		searchModelEntity.statusMessage = statusMessage;
	}
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		searchModelEntity.datetime = datetime;
	}
	final String? ngVersion = jsonConvert.convert<String>(json['ng_version']);
	if (ngVersion != null) {
		searchModelEntity.ngVersion = ngVersion;
	}
	final SearchModelData? data = jsonConvert.convert<SearchModelData>(json['data']);
	if (data != null) {
		searchModelEntity.data = data;
	}
	return searchModelEntity;
}

Map<String, dynamic> $SearchModelEntityToJson(SearchModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status_code'] = entity.statusCode;
	data['status_message'] = entity.statusMessage;
	data['datetime'] = entity.datetime;
	data['ng_version'] = entity.ngVersion;
	data['data'] = entity.data?.toJson();
	return data;
}

SearchModelData $SearchModelDataFromJson(Map<String, dynamic> json) {
	final SearchModelData searchModelData = SearchModelData();
	final String? searchType = jsonConvert.convert<String>(json['search_type']);
	if (searchType != null) {
		searchModelData.searchType = searchType;
	}
	final List<dynamic>? didYouMeanResult = jsonConvert.convertListNotNull<dynamic>(json['did_you_mean_result']);
	if (didYouMeanResult != null) {
		searchModelData.didYouMeanResult = didYouMeanResult;
	}
	final List<SearchModelDataResult>? result = jsonConvert.convertListNotNull<SearchModelDataResult>(json['result']);
	if (result != null) {
		searchModelData.result = result;
	}
	return searchModelData;
}

Map<String, dynamic> $SearchModelDataToJson(SearchModelData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['search_type'] = entity.searchType;
	data['did_you_mean_result'] =  entity.didYouMeanResult;
	data['result'] =  entity.result?.map((v) => v.toJson()).toList();
	return data;
}

SearchModelDataResult $SearchModelDataResultFromJson(Map<String, dynamic> json) {
	final SearchModelDataResult searchModelDataResult = SearchModelDataResult();
	final String? medicineName = jsonConvert.convert<String>(json['medicine_name']);
	if (medicineName != null) {
		searchModelDataResult.medicineName = medicineName;
	}
	final String? content = jsonConvert.convert<String>(json['content']);
	if (content != null) {
		searchModelDataResult.content = content;
	}
	final int? mrp = jsonConvert.convert<int>(json['mrp']);
	if (mrp != null) {
		searchModelDataResult.mrp = mrp;
	}
	final String? price = jsonConvert.convert<String>(json['price']);
	if (price != null) {
		searchModelDataResult.price = price;
	}
	final String? slug = jsonConvert.convert<String>(json['slug']);
	if (slug != null) {
		searchModelDataResult.slug = slug;
	}
	final int? medicineId = jsonConvert.convert<int>(json['medicine_id']);
	if (medicineId != null) {
		searchModelDataResult.medicineId = medicineId;
	}
	final String? packingSize = jsonConvert.convert<String>(json['packing_size']);
	if (packingSize != null) {
		searchModelDataResult.packingSize = packingSize;
	}
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		searchModelDataResult.size = size;
	}
	final String? manufacturerName = jsonConvert.convert<String>(json['manufacturer_name']);
	if (manufacturerName != null) {
		searchModelDataResult.manufacturerName = manufacturerName;
	}
	final String? approved = jsonConvert.convert<String>(json['approved']);
	if (approved != null) {
		searchModelDataResult.approved = approved;
	}
	final String? medicineType = jsonConvert.convert<String>(json['medicine_type']);
	if (medicineType != null) {
		searchModelDataResult.medicineType = medicineType;
	}
	final String? gtinNumber = jsonConvert.convert<String>(json['gtin_number']);
	if (gtinNumber != null) {
		searchModelDataResult.gtinNumber = gtinNumber;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		searchModelDataResult.image = image;
	}
	final String? medicineNameSuggest = jsonConvert.convert<String>(json['medicine_name_suggest']);
	if (medicineNameSuggest != null) {
		searchModelDataResult.medicineNameSuggest = medicineNameSuggest;
	}
	final String? packSize = jsonConvert.convert<String>(json['pack_size']);
	if (packSize != null) {
		searchModelDataResult.packSize = packSize;
	}
	final int? gstPercentage = jsonConvert.convert<int>(json['gst_percentage']);
	if (gstPercentage != null) {
		searchModelDataResult.gstPercentage = gstPercentage;
	}
	final String? scheduleType = jsonConvert.convert<String>(json['schedule_type']);
	if (scheduleType != null) {
		searchModelDataResult.scheduleType = scheduleType;
	}
	final String? availableForPatient = jsonConvert.convert<String>(json['available_for_patient']);
	if (availableForPatient != null) {
		searchModelDataResult.availableForPatient = availableForPatient;
	}
	final String? location = jsonConvert.convert<String>(json['location']);
	if (location != null) {
		searchModelDataResult.location = location;
	}
	final int? saleDiscount = jsonConvert.convert<int>(json['sale_discount']);
	if (saleDiscount != null) {
		searchModelDataResult.saleDiscount = saleDiscount;
	}
	final int? saleB2bDiscount = jsonConvert.convert<int>(json['sale_b2b_discount']);
	if (saleB2bDiscount != null) {
		searchModelDataResult.saleB2bDiscount = saleB2bDiscount;
	}
	final int? saleCount = jsonConvert.convert<int>(json['sale_count']);
	if (saleCount != null) {
		searchModelDataResult.saleCount = saleCount;
	}
	final int? minQuantity = jsonConvert.convert<int>(json['min_quantity']);
	if (minQuantity != null) {
		searchModelDataResult.minQuantity = minQuantity;
	}
	final int? maxQuantity = jsonConvert.convert<int>(json['max_quantity']);
	if (maxQuantity != null) {
		searchModelDataResult.maxQuantity = maxQuantity;
	}
	final int? cessPercentage = jsonConvert.convert<int>(json['cess_percentage']);
	if (cessPercentage != null) {
		searchModelDataResult.cessPercentage = cessPercentage;
	}
	final String? lockDiscount = jsonConvert.convert<String>(json['lock_discount']);
	if (lockDiscount != null) {
		searchModelDataResult.lockDiscount = lockDiscount;
	}
	final String? lockB2bDiscount = jsonConvert.convert<String>(json['lock_b2b_discount']);
	if (lockB2bDiscount != null) {
		searchModelDataResult.lockB2bDiscount = lockB2bDiscount;
	}
	final String? sellInLoose = jsonConvert.convert<String>(json['sell_in_loose']);
	if (sellInLoose != null) {
		searchModelDataResult.sellInLoose = sellInLoose;
	}
	final String? directions = jsonConvert.convert<String>(json['directions']);
	if (directions != null) {
		searchModelDataResult.directions = directions;
	}
	final int? inventoryId = jsonConvert.convert<int>(json['inventory_id']);
	if (inventoryId != null) {
		searchModelDataResult.inventoryId = inventoryId;
	}
	final int? quantity = jsonConvert.convert<int>(json['quantity']);
	if (quantity != null) {
		searchModelDataResult.quantity = quantity;
	}
	final String? discontinued = jsonConvert.convert<String>(json['discontinued']);
	if (discontinued != null) {
		searchModelDataResult.discontinued = discontinued;
	}
	return searchModelDataResult;
}

Map<String, dynamic> $SearchModelDataResultToJson(SearchModelDataResult entity) {
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
	data['schedule_type'] = entity.scheduleType;
	data['available_for_patient'] = entity.availableForPatient;
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
	return data;
}