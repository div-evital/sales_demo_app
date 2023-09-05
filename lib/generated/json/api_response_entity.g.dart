import 'package:evital_sales/generated/json/base/json_convert_content.dart';
import 'package:evital_sales/model/api_response_entity.dart';

ApiResponseEntity $ApiResponseEntityFromJson(Map<String, dynamic> json) {
	final ApiResponseEntity apiResponseEntity = ApiResponseEntity();
	final String? statusCode = jsonConvert.convert<String>(json['status_code']);
	if (statusCode != null) {
		apiResponseEntity.statusCode = statusCode;
	}
	final String? statusMessage = jsonConvert.convert<String>(json['status_message']);
	if (statusMessage != null) {
		apiResponseEntity.statusMessage = statusMessage;
	}
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		apiResponseEntity.datetime = datetime;
	}
	final String? ngVersion = jsonConvert.convert<String>(json['ng_version']);
	if (ngVersion != null) {
		apiResponseEntity.ngVersion = ngVersion;
	}
	final ApiResponseData? data = jsonConvert.convert<ApiResponseData>(json['data']);
	if (data != null) {
		apiResponseEntity.data = data;
	}
	return apiResponseEntity;
}

Map<String, dynamic> $ApiResponseEntityToJson(ApiResponseEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status_code'] = entity.statusCode;
	data['status_message'] = entity.statusMessage;
	data['datetime'] = entity.datetime;
	data['ng_version'] = entity.ngVersion;
	data['data'] = entity.data?.toJson();
	return data;
}

ApiResponseData $ApiResponseDataFromJson(Map<String, dynamic> json) {
	final ApiResponseData apiResponseData = ApiResponseData();
	final int? currentPage = jsonConvert.convert<int>(json['current_page']);
	if (currentPage != null) {
		apiResponseData.currentPage = currentPage;
	}
	final int? rpp = jsonConvert.convert<int>(json['rpp']);
	if (rpp != null) {
		apiResponseData.rpp = rpp;
	}
	final List<ApiResponseDataResults>? results = jsonConvert.convertListNotNull<ApiResponseDataResults>(json['results']);
	if (results != null) {
		apiResponseData.results = results;
	}
	final List<ApiResponseDataStaffList>? staffList = jsonConvert.convertListNotNull<ApiResponseDataStaffList>(json['staff_list']);
	if (staffList != null) {
		apiResponseData.staffList = staffList;
	}
	final List<ApiResponseDataPaymentMethods>? paymentMethods = jsonConvert.convertListNotNull<ApiResponseDataPaymentMethods>(json['payment_methods']);
	if (paymentMethods != null) {
		apiResponseData.paymentMethods = paymentMethods;
	}
	final List<ApiResponseDataAdjustmentPaymentMethods>? adjustmentPaymentMethods = jsonConvert.convertListNotNull<ApiResponseDataAdjustmentPaymentMethods>(json['adjustment_payment_methods']);
	if (adjustmentPaymentMethods != null) {
		apiResponseData.adjustmentPaymentMethods = adjustmentPaymentMethods;
	}
	return apiResponseData;
}

Map<String, dynamic> $ApiResponseDataToJson(ApiResponseData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['current_page'] = entity.currentPage;
	data['rpp'] = entity.rpp;
	data['results'] =  entity.results?.map((v) => v.toJson()).toList();
	data['staff_list'] =  entity.staffList?.map((v) => v.toJson()).toList();
	data['payment_methods'] =  entity.paymentMethods?.map((v) => v.toJson()).toList();
	data['adjustment_payment_methods'] =  entity.adjustmentPaymentMethods?.map((v) => v.toJson()).toList();
	return data;
}

ApiResponseDataResults $ApiResponseDataResultsFromJson(Map<String, dynamic> json) {
	final ApiResponseDataResults apiResponseDataResults = ApiResponseDataResults();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		apiResponseDataResults.id = id;
	}
	final String? billDate = jsonConvert.convert<String>(json['bill_date']);
	if (billDate != null) {
		apiResponseDataResults.billDate = billDate;
	}
	final String? orderNumber = jsonConvert.convert<String>(json['order_number']);
	if (orderNumber != null) {
		apiResponseDataResults.orderNumber = orderNumber;
	}
	final int? amount = jsonConvert.convert<int>(json['amount']);
	if (amount != null) {
		apiResponseDataResults.amount = amount;
	}
	final int? total = jsonConvert.convert<int>(json['total']);
	if (total != null) {
		apiResponseDataResults.total = total;
	}
	final int? paidAmount = jsonConvert.convert<int>(json['paid_amount']);
	if (paidAmount != null) {
		apiResponseDataResults.paidAmount = paidAmount;
	}
	final int? dueAmount = jsonConvert.convert<int>(json['due_amount']);
	if (dueAmount != null) {
		apiResponseDataResults.dueAmount = dueAmount;
	}
	final int? paymentStatus = jsonConvert.convert<int>(json['payment_status']);
	if (paymentStatus != null) {
		apiResponseDataResults.paymentStatus = paymentStatus;
	}
	final int? userId = jsonConvert.convert<int>(json['user_id']);
	if (userId != null) {
		apiResponseDataResults.userId = userId;
	}
	final String? orderDeliveryDatetime = jsonConvert.convert<String>(json['order_delivery_datetime']);
	if (orderDeliveryDatetime != null) {
		apiResponseDataResults.orderDeliveryDatetime = orderDeliveryDatetime;
	}
	final String? createdDate = jsonConvert.convert<String>(json['created_date']);
	if (createdDate != null) {
		apiResponseDataResults.createdDate = createdDate;
	}
	final String? paymentDate = jsonConvert.convert<String>(json['payment_date']);
	if (paymentDate != null) {
		apiResponseDataResults.paymentDate = paymentDate;
	}
	final int? userPatientId = jsonConvert.convert<int>(json['user_patient_id']);
	if (userPatientId != null) {
		apiResponseDataResults.userPatientId = userPatientId;
	}
	final String? patientName = jsonConvert.convert<String>(json['patient_name']);
	if (patientName != null) {
		apiResponseDataResults.patientName = patientName;
	}
	final String? mobile = jsonConvert.convert<String>(json['mobile']);
	if (mobile != null) {
		apiResponseDataResults.mobile = mobile;
	}
	final String? billNo = jsonConvert.convert<String>(json['bill_no']);
	if (billNo != null) {
		apiResponseDataResults.billNo = billNo;
	}
	final String? orderStatus = jsonConvert.convert<String>(json['order_status']);
	if (orderStatus != null) {
		apiResponseDataResults.orderStatus = orderStatus;
	}
	final String? deliveryType = jsonConvert.convert<String>(json['delivery_type']);
	if (deliveryType != null) {
		apiResponseDataResults.deliveryType = deliveryType;
	}
	final String? orderMode = jsonConvert.convert<String>(json['order_mode']);
	if (orderMode != null) {
		apiResponseDataResults.orderMode = orderMode;
	}
	final String? paymentMode = jsonConvert.convert<String>(json['payment_mode']);
	if (paymentMode != null) {
		apiResponseDataResults.paymentMode = paymentMode;
	}
	final String? paymentRefId = jsonConvert.convert<String>(json['payment_ref_id']);
	if (paymentRefId != null) {
		apiResponseDataResults.paymentRefId = paymentRefId;
	}
	final int? refTransactionId = jsonConvert.convert<int>(json['ref_transaction_id']);
	if (refTransactionId != null) {
		apiResponseDataResults.refTransactionId = refTransactionId;
	}
	final int? referenceNumber = jsonConvert.convert<int>(json['reference_number']);
	if (referenceNumber != null) {
		apiResponseDataResults.referenceNumber = referenceNumber;
	}
	final int? patientId = jsonConvert.convert<int>(json['patient_id']);
	if (patientId != null) {
		apiResponseDataResults.patientId = patientId;
	}
	final int? orderById = jsonConvert.convert<int>(json['order_by_id']);
	if (orderById != null) {
		apiResponseDataResults.orderById = orderById;
	}
	final String? orderByEntity = jsonConvert.convert<String>(json['order_by_entity']);
	if (orderByEntity != null) {
		apiResponseDataResults.orderByEntity = orderByEntity;
	}
	final String? orderByName = jsonConvert.convert<String>(json['order_by_name']);
	if (orderByName != null) {
		apiResponseDataResults.orderByName = orderByName;
	}
	final String? remark = jsonConvert.convert<String>(json['remark']);
	if (remark != null) {
		apiResponseDataResults.remark = remark;
	}
	final String? attachPrescription = jsonConvert.convert<String>(json['attach_prescription']);
	if (attachPrescription != null) {
		apiResponseDataResults.attachPrescription = attachPrescription;
	}
	final int? redeemedLoyaltyPoints = jsonConvert.convert<int>(json['redeemed_loyalty_points']);
	if (redeemedLoyaltyPoints != null) {
		apiResponseDataResults.redeemedLoyaltyPoints = redeemedLoyaltyPoints;
	}
	final String? xSource = jsonConvert.convert<String>(json['source']);
	if (xSource != null) {
		apiResponseDataResults.xSource = xSource;
	}
	final String? lockBill = jsonConvert.convert<String>(json['lock_bill']);
	if (lockBill != null) {
		apiResponseDataResults.lockBill = lockBill;
	}
	final String? invoiveQrcodeUrl = jsonConvert.convert<String>(json['invoive_qrcode_url']);
	if (invoiveQrcodeUrl != null) {
		apiResponseDataResults.invoiveQrcodeUrl = invoiveQrcodeUrl;
	}
	final String? printUrl = jsonConvert.convert<String>(json['print_url']);
	if (printUrl != null) {
		apiResponseDataResults.printUrl = printUrl;
	}
	final String? shareMessage = jsonConvert.convert<String>(json['share_message']);
	if (shareMessage != null) {
		apiResponseDataResults.shareMessage = shareMessage;
	}
	final List<ApiResponseDataResultsReferenceOrderResults>? referenceOrderResults = jsonConvert.convertListNotNull<ApiResponseDataResultsReferenceOrderResults>(json['reference_order_results']);
	if (referenceOrderResults != null) {
		apiResponseDataResults.referenceOrderResults = referenceOrderResults;
	}
	final String? chequeNumber = jsonConvert.convert<String>(json['cheque_number']);
	if (chequeNumber != null) {
		apiResponseDataResults.chequeNumber = chequeNumber;
	}
	final String? chequeDate = jsonConvert.convert<String>(json['cheque_date']);
	if (chequeDate != null) {
		apiResponseDataResults.chequeDate = chequeDate;
	}
	final String? bankTransactionRemark = jsonConvert.convert<String>(json['bank_transaction_remark']);
	if (bankTransactionRemark != null) {
		apiResponseDataResults.bankTransactionRemark = bankTransactionRemark;
	}
	final String? chequeAmount = jsonConvert.convert<String>(json['cheque_amount']);
	if (chequeAmount != null) {
		apiResponseDataResults.chequeAmount = chequeAmount;
	}
	final String? paymentCleared = jsonConvert.convert<String>(json['payment_cleared']);
	if (paymentCleared != null) {
		apiResponseDataResults.paymentCleared = paymentCleared;
	}
	return apiResponseDataResults;
}

Map<String, dynamic> $ApiResponseDataResultsToJson(ApiResponseDataResults entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['bill_date'] = entity.billDate;
	data['order_number'] = entity.orderNumber;
	data['amount'] = entity.amount;
	data['total'] = entity.total;
	data['paid_amount'] = entity.paidAmount;
	data['due_amount'] = entity.dueAmount;
	data['payment_status'] = entity.paymentStatus;
	data['user_id'] = entity.userId;
	data['order_delivery_datetime'] = entity.orderDeliveryDatetime;
	data['created_date'] = entity.createdDate;
	data['payment_date'] = entity.paymentDate;
	data['user_patient_id'] = entity.userPatientId;
	data['patient_name'] = entity.patientName;
	data['mobile'] = entity.mobile;
	data['bill_no'] = entity.billNo;
	data['order_status'] = entity.orderStatus;
	data['delivery_type'] = entity.deliveryType;
	data['order_mode'] = entity.orderMode;
	data['payment_mode'] = entity.paymentMode;
	data['payment_ref_id'] = entity.paymentRefId;
	data['ref_transaction_id'] = entity.refTransactionId;
	data['reference_number'] = entity.referenceNumber;
	data['patient_id'] = entity.patientId;
	data['order_by_id'] = entity.orderById;
	data['order_by_entity'] = entity.orderByEntity;
	data['order_by_name'] = entity.orderByName;
	data['remark'] = entity.remark;
	data['attach_prescription'] = entity.attachPrescription;
	data['redeemed_loyalty_points'] = entity.redeemedLoyaltyPoints;
	data['source'] = entity.xSource;
	data['lock_bill'] = entity.lockBill;
	data['invoive_qrcode_url'] = entity.invoiveQrcodeUrl;
	data['print_url'] = entity.printUrl;
	data['share_message'] = entity.shareMessage;
	data['reference_order_results'] =  entity.referenceOrderResults?.map((v) => v.toJson()).toList();
	data['cheque_number'] = entity.chequeNumber;
	data['cheque_date'] = entity.chequeDate;
	data['bank_transaction_remark'] = entity.bankTransactionRemark;
	data['cheque_amount'] = entity.chequeAmount;
	data['payment_cleared'] = entity.paymentCleared;
	return data;
}

ApiResponseDataResultsReferenceOrderResults $ApiResponseDataResultsReferenceOrderResultsFromJson(Map<String, dynamic> json) {
	final ApiResponseDataResultsReferenceOrderResults apiResponseDataResultsReferenceOrderResults = ApiResponseDataResultsReferenceOrderResults();
	final int? referenceOrderId = jsonConvert.convert<int>(json['reference_order_id']);
	if (referenceOrderId != null) {
		apiResponseDataResultsReferenceOrderResults.referenceOrderId = referenceOrderId;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		apiResponseDataResultsReferenceOrderResults.id = id;
	}
	final String? orderNumber = jsonConvert.convert<String>(json['order_number']);
	if (orderNumber != null) {
		apiResponseDataResultsReferenceOrderResults.orderNumber = orderNumber;
	}
	return apiResponseDataResultsReferenceOrderResults;
}

Map<String, dynamic> $ApiResponseDataResultsReferenceOrderResultsToJson(ApiResponseDataResultsReferenceOrderResults entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['reference_order_id'] = entity.referenceOrderId;
	data['id'] = entity.id;
	data['order_number'] = entity.orderNumber;
	return data;
}

ApiResponseDataStaffList $ApiResponseDataStaffListFromJson(Map<String, dynamic> json) {
	final ApiResponseDataStaffList apiResponseDataStaffList = ApiResponseDataStaffList();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		apiResponseDataStaffList.id = id;
	}
	final String? fullname = jsonConvert.convert<String>(json['fullname']);
	if (fullname != null) {
		apiResponseDataStaffList.fullname = fullname;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		apiResponseDataStaffList.status = status;
	}
	final String? entity = jsonConvert.convert<String>(json['entity']);
	if (entity != null) {
		apiResponseDataStaffList.entity = entity;
	}
	final String? firstname = jsonConvert.convert<String>(json['firstname']);
	if (firstname != null) {
		apiResponseDataStaffList.firstname = firstname;
	}
	final String? lastname = jsonConvert.convert<String>(json['lastname']);
	if (lastname != null) {
		apiResponseDataStaffList.lastname = lastname;
	}
	final int? roleId = jsonConvert.convert<int>(json['role_id']);
	if (roleId != null) {
		apiResponseDataStaffList.roleId = roleId;
	}
	final String? roleName = jsonConvert.convert<String>(json['role_name']);
	if (roleName != null) {
		apiResponseDataStaffList.roleName = roleName;
	}
	return apiResponseDataStaffList;
}

Map<String, dynamic> $ApiResponseDataStaffListToJson(ApiResponseDataStaffList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['fullname'] = entity.fullname;
	data['status'] = entity.status;
	data['entity'] = entity.entity;
	data['firstname'] = entity.firstname;
	data['lastname'] = entity.lastname;
	data['role_id'] = entity.roleId;
	data['role_name'] = entity.roleName;
	return data;
}

ApiResponseDataPaymentMethods $ApiResponseDataPaymentMethodsFromJson(Map<String, dynamic> json) {
	final ApiResponseDataPaymentMethods apiResponseDataPaymentMethods = ApiResponseDataPaymentMethods();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		apiResponseDataPaymentMethods.id = id;
	}
	final String? methodName = jsonConvert.convert<String>(json['method_name']);
	if (methodName != null) {
		apiResponseDataPaymentMethods.methodName = methodName;
	}
	final String? imageName = jsonConvert.convert<String>(json['image_name']);
	if (imageName != null) {
		apiResponseDataPaymentMethods.imageName = imageName;
	}
	final String? paymentGroup = jsonConvert.convert<String>(json['payment_group']);
	if (paymentGroup != null) {
		apiResponseDataPaymentMethods.paymentGroup = paymentGroup;
	}
	final String? imageUrl = jsonConvert.convert<String>(json['image_url']);
	if (imageUrl != null) {
		apiResponseDataPaymentMethods.imageUrl = imageUrl;
	}
	return apiResponseDataPaymentMethods;
}

Map<String, dynamic> $ApiResponseDataPaymentMethodsToJson(ApiResponseDataPaymentMethods entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['method_name'] = entity.methodName;
	data['image_name'] = entity.imageName;
	data['payment_group'] = entity.paymentGroup;
	data['image_url'] = entity.imageUrl;
	return data;
}

ApiResponseDataAdjustmentPaymentMethods $ApiResponseDataAdjustmentPaymentMethodsFromJson(Map<String, dynamic> json) {
	final ApiResponseDataAdjustmentPaymentMethods apiResponseDataAdjustmentPaymentMethods = ApiResponseDataAdjustmentPaymentMethods();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		apiResponseDataAdjustmentPaymentMethods.id = id;
	}
	final String? methodName = jsonConvert.convert<String>(json['method_name']);
	if (methodName != null) {
		apiResponseDataAdjustmentPaymentMethods.methodName = methodName;
	}
	final String? imageName = jsonConvert.convert<String>(json['image_name']);
	if (imageName != null) {
		apiResponseDataAdjustmentPaymentMethods.imageName = imageName;
	}
	final String? paymentGroup = jsonConvert.convert<String>(json['payment_group']);
	if (paymentGroup != null) {
		apiResponseDataAdjustmentPaymentMethods.paymentGroup = paymentGroup;
	}
	final String? imageUrl = jsonConvert.convert<String>(json['image_url']);
	if (imageUrl != null) {
		apiResponseDataAdjustmentPaymentMethods.imageUrl = imageUrl;
	}
	return apiResponseDataAdjustmentPaymentMethods;
}

Map<String, dynamic> $ApiResponseDataAdjustmentPaymentMethodsToJson(ApiResponseDataAdjustmentPaymentMethods entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['method_name'] = entity.methodName;
	data['image_name'] = entity.imageName;
	data['payment_group'] = entity.paymentGroup;
	data['image_url'] = entity.imageUrl;
	return data;
}