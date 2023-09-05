import 'package:evital_sales/generated/json/base/json_convert_content.dart';
import 'package:evital_sales/model/view_model/sales_view_entity.dart';

SalesViewEntity $SalesViewEntityFromJson(Map<String, dynamic> json) {
	final SalesViewEntity salesViewEntity = SalesViewEntity();
	final String? statusCode = jsonConvert.convert<String>(json['status_code']);
	if (statusCode != null) {
		salesViewEntity.statusCode = statusCode;
	}
	final String? statusMessage = jsonConvert.convert<String>(json['status_message']);
	if (statusMessage != null) {
		salesViewEntity.statusMessage = statusMessage;
	}
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		salesViewEntity.datetime = datetime;
	}
	final String? ngVersion = jsonConvert.convert<String>(json['ng_version']);
	if (ngVersion != null) {
		salesViewEntity.ngVersion = ngVersion;
	}
	final SalesViewData? data = jsonConvert.convert<SalesViewData>(json['data']);
	if (data != null) {
		salesViewEntity.data = data;
	}
	return salesViewEntity;
}

Map<String, dynamic> $SalesViewEntityToJson(SalesViewEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status_code'] = entity.statusCode;
	data['status_message'] = entity.statusMessage;
	data['datetime'] = entity.datetime;
	data['ng_version'] = entity.ngVersion;
	data['data'] = entity.data?.toJson();
	return data;
}

SalesViewData $SalesViewDataFromJson(Map<String, dynamic> json) {
	final SalesViewData salesViewData = SalesViewData();
	final int? orderId = jsonConvert.convert<int>(json['order_id']);
	if (orderId != null) {
		salesViewData.orderId = orderId;
	}
	final int? chemistId = jsonConvert.convert<int>(json['chemist_id']);
	if (chemistId != null) {
		salesViewData.chemistId = chemistId;
	}
	final int? patientId = jsonConvert.convert<int>(json['patient_id']);
	if (patientId != null) {
		salesViewData.patientId = patientId;
	}
	final int? parentPatientId = jsonConvert.convert<int>(json['parent_patient_id']);
	if (parentPatientId != null) {
		salesViewData.parentPatientId = parentPatientId;
	}
	final int? userId = jsonConvert.convert<int>(json['user_id']);
	if (userId != null) {
		salesViewData.userId = userId;
	}
	final int? doctorId = jsonConvert.convert<int>(json['doctor_id']);
	if (doctorId != null) {
		salesViewData.doctorId = doctorId;
	}
	final String? orderNumber = jsonConvert.convert<String>(json['order_number']);
	if (orderNumber != null) {
		salesViewData.orderNumber = orderNumber;
	}
	final String? orderDeliveryDatetime = jsonConvert.convert<String>(json['order_delivery_datetime']);
	if (orderDeliveryDatetime != null) {
		salesViewData.orderDeliveryDatetime = orderDeliveryDatetime;
	}
	final String? createdDate = jsonConvert.convert<String>(json['created_date']);
	if (createdDate != null) {
		salesViewData.createdDate = createdDate;
	}
	final int? amount = jsonConvert.convert<int>(json['amount']);
	if (amount != null) {
		salesViewData.amount = amount;
	}
	final int? discount = jsonConvert.convert<int>(json['discount']);
	if (discount != null) {
		salesViewData.discount = discount;
	}
	final int? discountpercentage = jsonConvert.convert<int>(json['discountpercentage']);
	if (discountpercentage != null) {
		salesViewData.discountpercentage = discountpercentage;
	}
	final int? redeembalance = jsonConvert.convert<int>(json['redeembalance']);
	if (redeembalance != null) {
		salesViewData.redeembalance = redeembalance;
	}
	final int? total = jsonConvert.convert<int>(json['total']);
	if (total != null) {
		salesViewData.total = total;
	}
	final int? paidAmount = jsonConvert.convert<int>(json['paid_amount']);
	if (paidAmount != null) {
		salesViewData.paidAmount = paidAmount;
	}
	final int? paymentStatus = jsonConvert.convert<int>(json['payment_status']);
	if (paymentStatus != null) {
		salesViewData.paymentStatus = paymentStatus;
	}
	final String? paymentDate = jsonConvert.convert<String>(json['payment_date']);
	if (paymentDate != null) {
		salesViewData.paymentDate = paymentDate;
	}
	final String? patientName = jsonConvert.convert<String>(json['patient_name']);
	if (patientName != null) {
		salesViewData.patientName = patientName;
	}
	final double? margin = jsonConvert.convert<double>(json['margin']);
	if (margin != null) {
		salesViewData.margin = margin;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		salesViewData.email = email;
	}
	final int? orderById = jsonConvert.convert<int>(json['order_by_id']);
	if (orderById != null) {
		salesViewData.orderById = orderById;
	}
	final String? orderByEntity = jsonConvert.convert<String>(json['order_by_entity']);
	if (orderByEntity != null) {
		salesViewData.orderByEntity = orderByEntity;
	}
	final int? referenceNumber = jsonConvert.convert<int>(json['reference_number']);
	if (referenceNumber != null) {
		salesViewData.referenceNumber = referenceNumber;
	}
	final String? billNo = jsonConvert.convert<String>(json['bill_no']);
	if (billNo != null) {
		salesViewData.billNo = billNo;
	}
	final String? orderStatus = jsonConvert.convert<String>(json['order_status']);
	if (orderStatus != null) {
		salesViewData.orderStatus = orderStatus;
	}
	final int? adjustmentAmount = jsonConvert.convert<int>(json['adjustment_amount']);
	if (adjustmentAmount != null) {
		salesViewData.adjustmentAmount = adjustmentAmount;
	}
	final String? remark = jsonConvert.convert<String>(json['remark']);
	if (remark != null) {
		salesViewData.remark = remark;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		salesViewData.address = address;
	}
	final String? addressLine2 = jsonConvert.convert<String>(json['address_line2']);
	if (addressLine2 != null) {
		salesViewData.addressLine2 = addressLine2;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		salesViewData.city = city;
	}
	final String? zipcode = jsonConvert.convert<String>(json['zipcode']);
	if (zipcode != null) {
		salesViewData.zipcode = zipcode;
	}
	final String? attachPrescription = jsonConvert.convert<String>(json['attach_prescription']);
	if (attachPrescription != null) {
		salesViewData.attachPrescription = attachPrescription;
	}
	final String? deliveryType = jsonConvert.convert<String>(json['delivery_type']);
	if (deliveryType != null) {
		salesViewData.deliveryType = deliveryType;
	}
	final int? shipping = jsonConvert.convert<int>(json['shipping']);
	if (shipping != null) {
		salesViewData.shipping = shipping;
	}
	final int? roundoff = jsonConvert.convert<int>(json['roundoff']);
	if (roundoff != null) {
		salesViewData.roundoff = roundoff;
	}
	final String? patientNote = jsonConvert.convert<String>(json['patient_note']);
	if (patientNote != null) {
		salesViewData.patientNote = patientNote;
	}
	final String? deliveryNote = jsonConvert.convert<String>(json['delivery_note']);
	if (deliveryNote != null) {
		salesViewData.deliveryNote = deliveryNote;
	}
	final String? orderMode = jsonConvert.convert<String>(json['order_mode']);
	if (orderMode != null) {
		salesViewData.orderMode = orderMode;
	}
	final String? paymentMode = jsonConvert.convert<String>(json['payment_mode']);
	if (paymentMode != null) {
		salesViewData.paymentMode = paymentMode;
	}
	final String? paymentLink = jsonConvert.convert<String>(json['payment_link']);
	if (paymentLink != null) {
		salesViewData.paymentLink = paymentLink;
	}
	final int? refTransactionId = jsonConvert.convert<int>(json['ref_transaction_id']);
	if (refTransactionId != null) {
		salesViewData.refTransactionId = refTransactionId;
	}
	final int? dueAmount = jsonConvert.convert<int>(json['due_amount']);
	if (dueAmount != null) {
		salesViewData.dueAmount = dueAmount;
	}
	final String? paymentRefId = jsonConvert.convert<String>(json['payment_ref_id']);
	if (paymentRefId != null) {
		salesViewData.paymentRefId = paymentRefId;
	}
	final double? latitude = jsonConvert.convert<double>(json['latitude']);
	if (latitude != null) {
		salesViewData.latitude = latitude;
	}
	final double? longitude = jsonConvert.convert<double>(json['longitude']);
	if (longitude != null) {
		salesViewData.longitude = longitude;
	}
	final String? rejectReason = jsonConvert.convert<String>(json['reject_reason']);
	if (rejectReason != null) {
		salesViewData.rejectReason = rejectReason;
	}
	final String? orderAssignFailReason = jsonConvert.convert<String>(json['order_assign_fail_reason']);
	if (orderAssignFailReason != null) {
		salesViewData.orderAssignFailReason = orderAssignFailReason;
	}
	final int? earnedLoyaltyPoints = jsonConvert.convert<int>(json['earned_loyalty_points']);
	if (earnedLoyaltyPoints != null) {
		salesViewData.earnedLoyaltyPoints = earnedLoyaltyPoints;
	}
	final int? redeemedLoyaltyPoints = jsonConvert.convert<int>(json['redeemed_loyalty_points']);
	if (redeemedLoyaltyPoints != null) {
		salesViewData.redeemedLoyaltyPoints = redeemedLoyaltyPoints;
	}
	final String? utmSource = jsonConvert.convert<String>(json['utm_source']);
	if (utmSource != null) {
		salesViewData.utmSource = utmSource;
	}
	final String? utmCampaign = jsonConvert.convert<String>(json['utm_campaign']);
	if (utmCampaign != null) {
		salesViewData.utmCampaign = utmCampaign;
	}
	final String? lockBill = jsonConvert.convert<String>(json['lock_bill']);
	if (lockBill != null) {
		salesViewData.lockBill = lockBill;
	}
	final SalesViewDataCustomerRegisteredChemistDetails? customerRegisteredChemistDetails = jsonConvert.convert<SalesViewDataCustomerRegisteredChemistDetails>(json['customer_registered_chemist_details']);
	if (customerRegisteredChemistDetails != null) {
		salesViewData.customerRegisteredChemistDetails = customerRegisteredChemistDetails;
	}
	final String? mobile = jsonConvert.convert<String>(json['mobile']);
	if (mobile != null) {
		salesViewData.mobile = mobile;
	}
	final String? doctorName = jsonConvert.convert<String>(json['doctor_name']);
	if (doctorName != null) {
		salesViewData.doctorName = doctorName;
	}
	final List<dynamic>? prescriptionImages = jsonConvert.convertListNotNull<dynamic>(json['prescription_images']);
	if (prescriptionImages != null) {
		salesViewData.prescriptionImages = prescriptionImages;
	}
	final String? chequeNumber = jsonConvert.convert<String>(json['cheque_number']);
	if (chequeNumber != null) {
		salesViewData.chequeNumber = chequeNumber;
	}
	final String? chequeDate = jsonConvert.convert<String>(json['cheque_date']);
	if (chequeDate != null) {
		salesViewData.chequeDate = chequeDate;
	}
	final String? bankTransactionRemark = jsonConvert.convert<String>(json['bank_transaction_remark']);
	if (bankTransactionRemark != null) {
		salesViewData.bankTransactionRemark = bankTransactionRemark;
	}
	final String? chequeAmount = jsonConvert.convert<String>(json['cheque_amount']);
	if (chequeAmount != null) {
		salesViewData.chequeAmount = chequeAmount;
	}
	final String? paymentCleared = jsonConvert.convert<String>(json['payment_cleared']);
	if (paymentCleared != null) {
		salesViewData.paymentCleared = paymentCleared;
	}
	final bool? isDunzoTask = jsonConvert.convert<bool>(json['is_dunzo_task']);
	if (isDunzoTask != null) {
		salesViewData.isDunzoTask = isDunzoTask;
	}
	final SalesViewDataDeliveryInfo? deliveryInfo = jsonConvert.convert<SalesViewDataDeliveryInfo>(json['delivery_info']);
	if (deliveryInfo != null) {
		salesViewData.deliveryInfo = deliveryInfo;
	}
	final int? totalQty = jsonConvert.convert<int>(json['total_qty']);
	if (totalQty != null) {
		salesViewData.totalQty = totalQty;
	}
	final int? totalItems = jsonConvert.convert<int>(json['total_items']);
	if (totalItems != null) {
		salesViewData.totalItems = totalItems;
	}
	final double? totalGst = jsonConvert.convert<double>(json['total_gst']);
	if (totalGst != null) {
		salesViewData.totalGst = totalGst;
	}
	final int? totalCess = jsonConvert.convert<int>(json['total_cess']);
	if (totalCess != null) {
		salesViewData.totalCess = totalCess;
	}
	final String? printUrl = jsonConvert.convert<String>(json['print_url']);
	if (printUrl != null) {
		salesViewData.printUrl = printUrl;
	}
	final String? shareMessage = jsonConvert.convert<String>(json['share_message']);
	if (shareMessage != null) {
		salesViewData.shareMessage = shareMessage;
	}
	final String? smsContent = jsonConvert.convert<String>(json['sms_content']);
	if (smsContent != null) {
		salesViewData.smsContent = smsContent;
	}
	final List<SalesViewDataItems>? items = jsonConvert.convertListNotNull<SalesViewDataItems>(json['items']);
	if (items != null) {
		salesViewData.items = items;
	}
	final String? invoiceUrl = jsonConvert.convert<String>(json['invoice_url']);
	if (invoiceUrl != null) {
		salesViewData.invoiceUrl = invoiceUrl;
	}
	final SalesViewDataCustomerDetails? customerDetails = jsonConvert.convert<SalesViewDataCustomerDetails>(json['customer_details']);
	if (customerDetails != null) {
		salesViewData.customerDetails = customerDetails;
	}
	final SalesViewDataBillingForDetails? billingForDetails = jsonConvert.convert<SalesViewDataBillingForDetails>(json['billing_for_details']);
	if (billingForDetails != null) {
		salesViewData.billingForDetails = billingForDetails;
	}
	final SalesViewDataSettingResults? settingResults = jsonConvert.convert<SalesViewDataSettingResults>(json['setting_results']);
	if (settingResults != null) {
		salesViewData.settingResults = settingResults;
	}
	final List<SalesViewDataPaymentMethods>? paymentMethods = jsonConvert.convertListNotNull<SalesViewDataPaymentMethods>(json['payment_methods']);
	if (paymentMethods != null) {
		salesViewData.paymentMethods = paymentMethods;
	}
	final List<SalesViewDataAdjustmentPaymentMethods>? adjustmentPaymentMethods = jsonConvert.convertListNotNull<SalesViewDataAdjustmentPaymentMethods>(json['adjustment_payment_methods']);
	if (adjustmentPaymentMethods != null) {
		salesViewData.adjustmentPaymentMethods = adjustmentPaymentMethods;
	}
	final String? invoiveQrcodeUrl = jsonConvert.convert<String>(json['invoive_qrcode_url']);
	if (invoiveQrcodeUrl != null) {
		salesViewData.invoiveQrcodeUrl = invoiveQrcodeUrl;
	}
	final String? pharmacyLogo = jsonConvert.convert<String>(json['pharmacy_logo']);
	if (pharmacyLogo != null) {
		salesViewData.pharmacyLogo = pharmacyLogo;
	}
	final String? pharmacistDigitalSignature = jsonConvert.convert<String>(json['pharmacist_digital_signature']);
	if (pharmacistDigitalSignature != null) {
		salesViewData.pharmacistDigitalSignature = pharmacistDigitalSignature;
	}
	final SalesViewDataMedicineReminderDetails? medicineReminderDetails = jsonConvert.convert<SalesViewDataMedicineReminderDetails>(json['medicine_reminder_details']);
	if (medicineReminderDetails != null) {
		salesViewData.medicineReminderDetails = medicineReminderDetails;
	}
	final int? previousId = jsonConvert.convert<int>(json['previous_id']);
	if (previousId != null) {
		salesViewData.previousId = previousId;
	}
	final int? nextId = jsonConvert.convert<int>(json['next_id']);
	if (nextId != null) {
		salesViewData.nextId = nextId;
	}
	final List<SalesViewDataStaffList>? staffList = jsonConvert.convertListNotNull<SalesViewDataStaffList>(json['staff_list']);
	if (staffList != null) {
		salesViewData.staffList = staffList;
	}
	final List<SalesViewDataFamilyMemberList>? familyMemberList = jsonConvert.convertListNotNull<SalesViewDataFamilyMemberList>(json['family_member_list']);
	if (familyMemberList != null) {
		salesViewData.familyMemberList = familyMemberList;
	}
	final int? draftById = jsonConvert.convert<int>(json['draft_by_id']);
	if (draftById != null) {
		salesViewData.draftById = draftById;
	}
	final String? draftByEntity = jsonConvert.convert<String>(json['draft_by_entity']);
	if (draftByEntity != null) {
		salesViewData.draftByEntity = draftByEntity;
	}
	final int? draftId = jsonConvert.convert<int>(json['draft_id']);
	if (draftId != null) {
		salesViewData.draftId = draftId;
	}
	final List<SalesViewDataLoyaltyPointAllocations>? loyaltyPointAllocations = jsonConvert.convertListNotNull<SalesViewDataLoyaltyPointAllocations>(json['loyalty_point_allocations']);
	if (loyaltyPointAllocations != null) {
		salesViewData.loyaltyPointAllocations = loyaltyPointAllocations;
	}
	final double? balance = jsonConvert.convert<double>(json['balance']);
	if (balance != null) {
		salesViewData.balance = balance;
	}
	return salesViewData;
}

Map<String, dynamic> $SalesViewDataToJson(SalesViewData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['order_id'] = entity.orderId;
	data['chemist_id'] = entity.chemistId;
	data['patient_id'] = entity.patientId;
	data['parent_patient_id'] = entity.parentPatientId;
	data['user_id'] = entity.userId;
	data['doctor_id'] = entity.doctorId;
	data['order_number'] = entity.orderNumber;
	data['order_delivery_datetime'] = entity.orderDeliveryDatetime;
	data['created_date'] = entity.createdDate;
	data['amount'] = entity.amount;
	data['discount'] = entity.discount;
	data['discountpercentage'] = entity.discountpercentage;
	data['redeembalance'] = entity.redeembalance;
	data['total'] = entity.total;
	data['paid_amount'] = entity.paidAmount;
	data['payment_status'] = entity.paymentStatus;
	data['payment_date'] = entity.paymentDate;
	data['patient_name'] = entity.patientName;
	data['margin'] = entity.margin;
	data['email'] = entity.email;
	data['order_by_id'] = entity.orderById;
	data['order_by_entity'] = entity.orderByEntity;
	data['reference_number'] = entity.referenceNumber;
	data['bill_no'] = entity.billNo;
	data['order_status'] = entity.orderStatus;
	data['adjustment_amount'] = entity.adjustmentAmount;
	data['remark'] = entity.remark;
	data['address'] = entity.address;
	data['address_line2'] = entity.addressLine2;
	data['city'] = entity.city;
	data['zipcode'] = entity.zipcode;
	data['attach_prescription'] = entity.attachPrescription;
	data['delivery_type'] = entity.deliveryType;
	data['shipping'] = entity.shipping;
	data['roundoff'] = entity.roundoff;
	data['patient_note'] = entity.patientNote;
	data['delivery_note'] = entity.deliveryNote;
	data['order_mode'] = entity.orderMode;
	data['payment_mode'] = entity.paymentMode;
	data['payment_link'] = entity.paymentLink;
	data['ref_transaction_id'] = entity.refTransactionId;
	data['due_amount'] = entity.dueAmount;
	data['payment_ref_id'] = entity.paymentRefId;
	data['latitude'] = entity.latitude;
	data['longitude'] = entity.longitude;
	data['reject_reason'] = entity.rejectReason;
	data['order_assign_fail_reason'] = entity.orderAssignFailReason;
	data['earned_loyalty_points'] = entity.earnedLoyaltyPoints;
	data['redeemed_loyalty_points'] = entity.redeemedLoyaltyPoints;
	data['utm_source'] = entity.utmSource;
	data['utm_campaign'] = entity.utmCampaign;
	data['lock_bill'] = entity.lockBill;
	data['customer_registered_chemist_details'] = entity.customerRegisteredChemistDetails?.toJson();
	data['mobile'] = entity.mobile;
	data['doctor_name'] = entity.doctorName;
	data['prescription_images'] =  entity.prescriptionImages;
	data['cheque_number'] = entity.chequeNumber;
	data['cheque_date'] = entity.chequeDate;
	data['bank_transaction_remark'] = entity.bankTransactionRemark;
	data['cheque_amount'] = entity.chequeAmount;
	data['payment_cleared'] = entity.paymentCleared;
	data['is_dunzo_task'] = entity.isDunzoTask;
	data['delivery_info'] = entity.deliveryInfo?.toJson();
	data['total_qty'] = entity.totalQty;
	data['total_items'] = entity.totalItems;
	data['total_gst'] = entity.totalGst;
	data['total_cess'] = entity.totalCess;
	data['print_url'] = entity.printUrl;
	data['share_message'] = entity.shareMessage;
	data['sms_content'] = entity.smsContent;
	data['items'] =  entity.items?.map((v) => v.toJson()).toList();
	data['invoice_url'] = entity.invoiceUrl;
	data['customer_details'] = entity.customerDetails?.toJson();
	data['billing_for_details'] = entity.billingForDetails?.toJson();
	data['setting_results'] = entity.settingResults?.toJson();
	data['payment_methods'] =  entity.paymentMethods?.map((v) => v.toJson()).toList();
	data['adjustment_payment_methods'] =  entity.adjustmentPaymentMethods?.map((v) => v.toJson()).toList();
	data['invoive_qrcode_url'] = entity.invoiveQrcodeUrl;
	data['pharmacy_logo'] = entity.pharmacyLogo;
	data['pharmacist_digital_signature'] = entity.pharmacistDigitalSignature;
	data['medicine_reminder_details'] = entity.medicineReminderDetails?.toJson();
	data['previous_id'] = entity.previousId;
	data['next_id'] = entity.nextId;
	data['staff_list'] =  entity.staffList?.map((v) => v.toJson()).toList();
	data['family_member_list'] =  entity.familyMemberList?.map((v) => v.toJson()).toList();
	data['draft_by_id'] = entity.draftById;
	data['draft_by_entity'] = entity.draftByEntity;
	data['draft_id'] = entity.draftId;
	data['loyalty_point_allocations'] =  entity.loyaltyPointAllocations?.map((v) => v.toJson()).toList();
	data['balance'] = entity.balance;
	return data;
}

SalesViewDataCustomerRegisteredChemistDetails $SalesViewDataCustomerRegisteredChemistDetailsFromJson(Map<String, dynamic> json) {
	final SalesViewDataCustomerRegisteredChemistDetails salesViewDataCustomerRegisteredChemistDetails = SalesViewDataCustomerRegisteredChemistDetails();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		salesViewDataCustomerRegisteredChemistDetails.id = id;
	}
	final String? pharmacyName = jsonConvert.convert<String>(json['pharmacy_name']);
	if (pharmacyName != null) {
		salesViewDataCustomerRegisteredChemistDetails.pharmacyName = pharmacyName;
	}
	final String? pharmacistName = jsonConvert.convert<String>(json['pharmacist_name']);
	if (pharmacistName != null) {
		salesViewDataCustomerRegisteredChemistDetails.pharmacistName = pharmacistName;
	}
	final String? area = jsonConvert.convert<String>(json['area']);
	if (area != null) {
		salesViewDataCustomerRegisteredChemistDetails.area = area;
	}
	final String? mobile = jsonConvert.convert<String>(json['mobile']);
	if (mobile != null) {
		salesViewDataCustomerRegisteredChemistDetails.mobile = mobile;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		salesViewDataCustomerRegisteredChemistDetails.city = city;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		salesViewDataCustomerRegisteredChemistDetails.address = address;
	}
	final String? addressLine2 = jsonConvert.convert<String>(json['address_line2']);
	if (addressLine2 != null) {
		salesViewDataCustomerRegisteredChemistDetails.addressLine2 = addressLine2;
	}
	final String? zipcode = jsonConvert.convert<String>(json['zipcode']);
	if (zipcode != null) {
		salesViewDataCustomerRegisteredChemistDetails.zipcode = zipcode;
	}
	return salesViewDataCustomerRegisteredChemistDetails;
}

Map<String, dynamic> $SalesViewDataCustomerRegisteredChemistDetailsToJson(SalesViewDataCustomerRegisteredChemistDetails entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['pharmacy_name'] = entity.pharmacyName;
	data['pharmacist_name'] = entity.pharmacistName;
	data['area'] = entity.area;
	data['mobile'] = entity.mobile;
	data['city'] = entity.city;
	data['address'] = entity.address;
	data['address_line2'] = entity.addressLine2;
	data['zipcode'] = entity.zipcode;
	return data;
}

SalesViewDataDeliveryInfo $SalesViewDataDeliveryInfoFromJson(Map<String, dynamic> json) {
	final SalesViewDataDeliveryInfo salesViewDataDeliveryInfo = SalesViewDataDeliveryInfo();
	final bool? isScheduleTask = jsonConvert.convert<bool>(json['is_schedule_task']);
	if (isScheduleTask != null) {
		salesViewDataDeliveryInfo.isScheduleTask = isScheduleTask;
	}
	final List<dynamic>? actions = jsonConvert.convertListNotNull<dynamic>(json['actions']);
	if (actions != null) {
		salesViewDataDeliveryInfo.actions = actions;
	}
	return salesViewDataDeliveryInfo;
}

Map<String, dynamic> $SalesViewDataDeliveryInfoToJson(SalesViewDataDeliveryInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['is_schedule_task'] = entity.isScheduleTask;
	data['actions'] =  entity.actions;
	return data;
}

SalesViewDataItems $SalesViewDataItemsFromJson(Map<String, dynamic> json) {
	final SalesViewDataItems salesViewDataItems = SalesViewDataItems();
	final int? price = jsonConvert.convert<int>(json['price']);
	if (price != null) {
		salesViewDataItems.price = price;
	}
	final String? directions = jsonConvert.convert<String>(json['directions']);
	if (directions != null) {
		salesViewDataItems.directions = directions;
	}
	final int? quantity = jsonConvert.convert<int>(json['quantity']);
	if (quantity != null) {
		salesViewDataItems.quantity = quantity;
	}
	final int? mrp = jsonConvert.convert<int>(json['mrp']);
	if (mrp != null) {
		salesViewDataItems.mrp = mrp;
	}
	final int? discount = jsonConvert.convert<int>(json['discount']);
	if (discount != null) {
		salesViewDataItems.discount = discount;
	}
	final String? batch = jsonConvert.convert<String>(json['batch']);
	if (batch != null) {
		salesViewDataItems.batch = batch;
	}
	final String? expiry = jsonConvert.convert<String>(json['expiry']);
	if (expiry != null) {
		salesViewDataItems.expiry = expiry;
	}
	final double? gst = jsonConvert.convert<double>(json['gst']);
	if (gst != null) {
		salesViewDataItems.gst = gst;
	}
	final int? gstpercentage = jsonConvert.convert<int>(json['gstpercentage']);
	if (gstpercentage != null) {
		salesViewDataItems.gstpercentage = gstpercentage;
	}
	final int? amount = jsonConvert.convert<int>(json['amount']);
	if (amount != null) {
		salesViewDataItems.amount = amount;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		salesViewDataItems.size = size;
	}
	final String? medicineName = jsonConvert.convert<String>(json['medicine_name']);
	if (medicineName != null) {
		salesViewDataItems.medicineName = medicineName;
	}
	final String? packSize = jsonConvert.convert<String>(json['pack_size']);
	if (packSize != null) {
		salesViewDataItems.packSize = packSize;
	}
	final String? content = jsonConvert.convert<String>(json['content']);
	if (content != null) {
		salesViewDataItems.content = content;
	}
	final String? dosageType = jsonConvert.convert<String>(json['dosage_type']);
	if (dosageType != null) {
		salesViewDataItems.dosageType = dosageType;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		salesViewDataItems.image = image;
	}
	final int? medicineId = jsonConvert.convert<int>(json['medicine_id']);
	if (medicineId != null) {
		salesViewDataItems.medicineId = medicineId;
	}
	final String? manufacturerName = jsonConvert.convert<String>(json['manufacturer_name']);
	if (manufacturerName != null) {
		salesViewDataItems.manufacturerName = manufacturerName;
	}
	final String? hsnCode = jsonConvert.convert<String>(json['hsn_code']);
	if (hsnCode != null) {
		salesViewDataItems.hsnCode = hsnCode;
	}
	final String? scheduleType = jsonConvert.convert<String>(json['schedule_type']);
	if (scheduleType != null) {
		salesViewDataItems.scheduleType = scheduleType;
	}
	final String? medicineType = jsonConvert.convert<String>(json['medicine_type']);
	if (medicineType != null) {
		salesViewDataItems.medicineType = medicineType;
	}
	final String? packingSize = jsonConvert.convert<String>(json['packing_size']);
	if (packingSize != null) {
		salesViewDataItems.packingSize = packingSize;
	}
	final int? saltContentId = jsonConvert.convert<int>(json['salt_content_id']);
	if (saltContentId != null) {
		salesViewDataItems.saltContentId = saltContentId;
	}
	final int? cess = jsonConvert.convert<int>(json['cess']);
	if (cess != null) {
		salesViewDataItems.cess = cess;
	}
	final int? cessPercentage = jsonConvert.convert<int>(json['cess_percentage']);
	if (cessPercentage != null) {
		salesViewDataItems.cessPercentage = cessPercentage;
	}
	final int? inventoryId = jsonConvert.convert<int>(json['inventory_id']);
	if (inventoryId != null) {
		salesViewDataItems.inventoryId = inventoryId;
	}
	final int? stock = jsonConvert.convert<int>(json['stock']);
	if (stock != null) {
		salesViewDataItems.stock = stock;
	}
	final int? priceToRetailer = jsonConvert.convert<int>(json['price_to_retailer']);
	if (priceToRetailer != null) {
		salesViewDataItems.priceToRetailer = priceToRetailer;
	}
	final double? margin = jsonConvert.convert<double>(json['margin']);
	if (margin != null) {
		salesViewDataItems.margin = margin;
	}
	final int? basePrice = jsonConvert.convert<int>(json['base_price']);
	if (basePrice != null) {
		salesViewDataItems.basePrice = basePrice;
	}
	final double? landingPrice = jsonConvert.convert<double>(json['landing_price']);
	if (landingPrice != null) {
		salesViewDataItems.landingPrice = landingPrice;
	}
	final String? location = jsonConvert.convert<String>(json['location']);
	if (location != null) {
		salesViewDataItems.location = location;
	}
	final int? saleDiscount = jsonConvert.convert<int>(json['sale_discount']);
	if (saleDiscount != null) {
		salesViewDataItems.saleDiscount = saleDiscount;
	}
	final String? lockDiscount = jsonConvert.convert<String>(json['lock_discount']);
	if (lockDiscount != null) {
		salesViewDataItems.lockDiscount = lockDiscount;
	}
	final String? sellInLoose = jsonConvert.convert<String>(json['sell_in_loose']);
	if (sellInLoose != null) {
		salesViewDataItems.sellInLoose = sellInLoose;
	}
	final dynamic? itemCategory = jsonConvert.convert<dynamic>(json['item_category']);
	if (itemCategory != null) {
		salesViewDataItems.itemCategory = itemCategory;
	}
	final int? itemCategoryId = jsonConvert.convert<int>(json['item_category_id']);
	if (itemCategoryId != null) {
		salesViewDataItems.itemCategoryId = itemCategoryId;
	}
	final int? loyaltyPoints = jsonConvert.convert<int>(json['loyalty_points']);
	if (loyaltyPoints != null) {
		salesViewDataItems.loyaltyPoints = loyaltyPoints;
	}
	final int? loyaltyPointsPercentage = jsonConvert.convert<int>(json['loyalty_points_percentage']);
	if (loyaltyPointsPercentage != null) {
		salesViewDataItems.loyaltyPointsPercentage = loyaltyPointsPercentage;
	}
	final int? batchDiscount = jsonConvert.convert<int>(json['batch_discount']);
	if (batchDiscount != null) {
		salesViewDataItems.batchDiscount = batchDiscount;
	}
	final dynamic? b2cMargin = jsonConvert.convert<dynamic>(json['b2c_margin']);
	if (b2cMargin != null) {
		salesViewDataItems.b2cMargin = b2cMargin;
	}
	final int? loyaltyPointsRedeemed = jsonConvert.convert<int>(json['loyalty_points_redeemed']);
	if (loyaltyPointsRedeemed != null) {
		salesViewDataItems.loyaltyPointsRedeemed = loyaltyPointsRedeemed;
	}
	final String? expiryReturn = jsonConvert.convert<String>(json['expiry_return']);
	if (expiryReturn != null) {
		salesViewDataItems.expiryReturn = expiryReturn;
	}
	final String? addedToShortbook = jsonConvert.convert<String>(json['added_to_shortbook']);
	if (addedToShortbook != null) {
		salesViewDataItems.addedToShortbook = addedToShortbook;
	}
	return salesViewDataItems;
}

Map<String, dynamic> $SalesViewDataItemsToJson(SalesViewDataItems entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['price'] = entity.price;
	data['directions'] = entity.directions;
	data['quantity'] = entity.quantity;
	data['mrp'] = entity.mrp;
	data['discount'] = entity.discount;
	data['batch'] = entity.batch;
	data['expiry'] = entity.expiry;
	data['gst'] = entity.gst;
	data['gstpercentage'] = entity.gstpercentage;
	data['amount'] = entity.amount;
	data['size'] = entity.size;
	data['medicine_name'] = entity.medicineName;
	data['pack_size'] = entity.packSize;
	data['content'] = entity.content;
	data['dosage_type'] = entity.dosageType;
	data['image'] = entity.image;
	data['medicine_id'] = entity.medicineId;
	data['manufacturer_name'] = entity.manufacturerName;
	data['hsn_code'] = entity.hsnCode;
	data['schedule_type'] = entity.scheduleType;
	data['medicine_type'] = entity.medicineType;
	data['packing_size'] = entity.packingSize;
	data['salt_content_id'] = entity.saltContentId;
	data['cess'] = entity.cess;
	data['cess_percentage'] = entity.cessPercentage;
	data['inventory_id'] = entity.inventoryId;
	data['stock'] = entity.stock;
	data['price_to_retailer'] = entity.priceToRetailer;
	data['margin'] = entity.margin;
	data['base_price'] = entity.basePrice;
	data['landing_price'] = entity.landingPrice;
	data['location'] = entity.location;
	data['sale_discount'] = entity.saleDiscount;
	data['lock_discount'] = entity.lockDiscount;
	data['sell_in_loose'] = entity.sellInLoose;
	data['item_category'] = entity.itemCategory;
	data['item_category_id'] = entity.itemCategoryId;
	data['loyalty_points'] = entity.loyaltyPoints;
	data['loyalty_points_percentage'] = entity.loyaltyPointsPercentage;
	data['batch_discount'] = entity.batchDiscount;
	data['b2c_margin'] = entity.b2cMargin;
	data['loyalty_points_redeemed'] = entity.loyaltyPointsRedeemed;
	data['expiry_return'] = entity.expiryReturn;
	data['added_to_shortbook'] = entity.addedToShortbook;
	return data;
}

SalesViewDataCustomerDetails $SalesViewDataCustomerDetailsFromJson(Map<String, dynamic> json) {
	final SalesViewDataCustomerDetails salesViewDataCustomerDetails = SalesViewDataCustomerDetails();
	final int? patientId = jsonConvert.convert<int>(json['patient_id']);
	if (patientId != null) {
		salesViewDataCustomerDetails.patientId = patientId;
	}
	final String? patientName = jsonConvert.convert<String>(json['patient_name']);
	if (patientName != null) {
		salesViewDataCustomerDetails.patientName = patientName;
	}
	final String? mobile = jsonConvert.convert<String>(json['mobile']);
	if (mobile != null) {
		salesViewDataCustomerDetails.mobile = mobile;
	}
	final String? patientAddress = jsonConvert.convert<String>(json['patient_address']);
	if (patientAddress != null) {
		salesViewDataCustomerDetails.patientAddress = patientAddress;
	}
	final String? patientCity = jsonConvert.convert<String>(json['patient_city']);
	if (patientCity != null) {
		salesViewDataCustomerDetails.patientCity = patientCity;
	}
	final String? gstnNumber = jsonConvert.convert<String>(json['gstn_number']);
	if (gstnNumber != null) {
		salesViewDataCustomerDetails.gstnNumber = gstnNumber;
	}
	final String? patientZipcode = jsonConvert.convert<String>(json['patient_zipcode']);
	if (patientZipcode != null) {
		salesViewDataCustomerDetails.patientZipcode = patientZipcode;
	}
	final String? profilePicture = jsonConvert.convert<String>(json['profile_picture']);
	if (profilePicture != null) {
		salesViewDataCustomerDetails.profilePicture = profilePicture;
	}
	final int? discountPercentage = jsonConvert.convert<int>(json['discount_percentage']);
	if (discountPercentage != null) {
		salesViewDataCustomerDetails.discountPercentage = discountPercentage;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		salesViewDataCustomerDetails.email = email;
	}
	return salesViewDataCustomerDetails;
}

Map<String, dynamic> $SalesViewDataCustomerDetailsToJson(SalesViewDataCustomerDetails entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['patient_id'] = entity.patientId;
	data['patient_name'] = entity.patientName;
	data['mobile'] = entity.mobile;
	data['patient_address'] = entity.patientAddress;
	data['patient_city'] = entity.patientCity;
	data['gstn_number'] = entity.gstnNumber;
	data['patient_zipcode'] = entity.patientZipcode;
	data['profile_picture'] = entity.profilePicture;
	data['discount_percentage'] = entity.discountPercentage;
	data['email'] = entity.email;
	return data;
}

SalesViewDataBillingForDetails $SalesViewDataBillingForDetailsFromJson(Map<String, dynamic> json) {
	final SalesViewDataBillingForDetails salesViewDataBillingForDetails = SalesViewDataBillingForDetails();
	final int? patientId = jsonConvert.convert<int>(json['patient_id']);
	if (patientId != null) {
		salesViewDataBillingForDetails.patientId = patientId;
	}
	final String? patientName = jsonConvert.convert<String>(json['patient_name']);
	if (patientName != null) {
		salesViewDataBillingForDetails.patientName = patientName;
	}
	final String? mobile = jsonConvert.convert<String>(json['mobile']);
	if (mobile != null) {
		salesViewDataBillingForDetails.mobile = mobile;
	}
	final String? patientAddress = jsonConvert.convert<String>(json['patient_address']);
	if (patientAddress != null) {
		salesViewDataBillingForDetails.patientAddress = patientAddress;
	}
	final String? patientCity = jsonConvert.convert<String>(json['patient_city']);
	if (patientCity != null) {
		salesViewDataBillingForDetails.patientCity = patientCity;
	}
	final String? gstnNumber = jsonConvert.convert<String>(json['gstn_number']);
	if (gstnNumber != null) {
		salesViewDataBillingForDetails.gstnNumber = gstnNumber;
	}
	final String? patientZipcode = jsonConvert.convert<String>(json['patient_zipcode']);
	if (patientZipcode != null) {
		salesViewDataBillingForDetails.patientZipcode = patientZipcode;
	}
	final String? profilePicture = jsonConvert.convert<String>(json['profile_picture']);
	if (profilePicture != null) {
		salesViewDataBillingForDetails.profilePicture = profilePicture;
	}
	final int? discountPercentage = jsonConvert.convert<int>(json['discount_percentage']);
	if (discountPercentage != null) {
		salesViewDataBillingForDetails.discountPercentage = discountPercentage;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		salesViewDataBillingForDetails.email = email;
	}
	return salesViewDataBillingForDetails;
}

Map<String, dynamic> $SalesViewDataBillingForDetailsToJson(SalesViewDataBillingForDetails entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['patient_id'] = entity.patientId;
	data['patient_name'] = entity.patientName;
	data['mobile'] = entity.mobile;
	data['patient_address'] = entity.patientAddress;
	data['patient_city'] = entity.patientCity;
	data['gstn_number'] = entity.gstnNumber;
	data['patient_zipcode'] = entity.patientZipcode;
	data['profile_picture'] = entity.profilePicture;
	data['discount_percentage'] = entity.discountPercentage;
	data['email'] = entity.email;
	return data;
}

SalesViewDataSettingResults $SalesViewDataSettingResultsFromJson(Map<String, dynamic> json) {
	final SalesViewDataSettingResults salesViewDataSettingResults = SalesViewDataSettingResults();
	final String? displayPhoneNumber = jsonConvert.convert<String>(json['display_phone_number']);
	if (displayPhoneNumber != null) {
		salesViewDataSettingResults.displayPhoneNumber = displayPhoneNumber;
	}
	final String? loyaltyPoint = jsonConvert.convert<String>(json['loyalty_point']);
	if (loyaltyPoint != null) {
		salesViewDataSettingResults.loyaltyPoint = loyaltyPoint;
	}
	final String? redeemLoyaltyPoint = jsonConvert.convert<String>(json['redeem_loyalty_point']);
	if (redeemLoyaltyPoint != null) {
		salesViewDataSettingResults.redeemLoyaltyPoint = redeemLoyaltyPoint;
	}
	final String? redeemLoyaltyPointPercentage = jsonConvert.convert<String>(json['redeem_loyalty_point_percentage']);
	if (redeemLoyaltyPointPercentage != null) {
		salesViewDataSettingResults.redeemLoyaltyPointPercentage = redeemLoyaltyPointPercentage;
	}
	final String? annualReconciliationOn = jsonConvert.convert<String>(json['annual_reconciliation_on']);
	if (annualReconciliationOn != null) {
		salesViewDataSettingResults.annualReconciliationOn = annualReconciliationOn;
	}
	final String? cashManagement = jsonConvert.convert<String>(json['cash_management']);
	if (cashManagement != null) {
		salesViewDataSettingResults.cashManagement = cashManagement;
	}
	final String? restrictItemHighPo = jsonConvert.convert<String>(json['restrict_item_high_po']);
	if (restrictItemHighPo != null) {
		salesViewDataSettingResults.restrictItemHighPo = restrictItemHighPo;
	}
	final String? autoMinMax = jsonConvert.convert<String>(json['auto_min_max']);
	if (autoMinMax != null) {
		salesViewDataSettingResults.autoMinMax = autoMinMax;
	}
	final String? allowNegativePurchaseReturn = jsonConvert.convert<String>(json['allow_negative_purchase_return']);
	if (allowNegativePurchaseReturn != null) {
		salesViewDataSettingResults.allowNegativePurchaseReturn = allowNegativePurchaseReturn;
	}
	final String? poPrefix = jsonConvert.convert<String>(json['po_prefix']);
	if (poPrefix != null) {
		salesViewDataSettingResults.poPrefix = poPrefix;
	}
	final String? saleDefaultPaymentMode = jsonConvert.convert<String>(json['sale_default_payment_mode']);
	if (saleDefaultPaymentMode != null) {
		salesViewDataSettingResults.saleDefaultPaymentMode = saleDefaultPaymentMode;
	}
	final String? salesSms = jsonConvert.convert<String>(json['sales_sms']);
	if (salesSms != null) {
		salesViewDataSettingResults.salesSms = salesSms;
	}
	final String? qrcodeLabel = jsonConvert.convert<String>(json['qrcode_label']);
	if (qrcodeLabel != null) {
		salesViewDataSettingResults.qrcodeLabel = qrcodeLabel;
	}
	final String? upi = jsonConvert.convert<String>(json['upi']);
	if (upi != null) {
		salesViewDataSettingResults.upi = upi;
	}
	final String? creditCard = jsonConvert.convert<String>(json['credit_card']);
	if (creditCard != null) {
		salesViewDataSettingResults.creditCard = creditCard;
	}
	final String? marginOnPtr = jsonConvert.convert<String>(json['margin_on_ptr']);
	if (marginOnPtr != null) {
		salesViewDataSettingResults.marginOnPtr = marginOnPtr;
	}
	final String? showLocation = jsonConvert.convert<String>(json['show_location']);
	if (showLocation != null) {
		salesViewDataSettingResults.showLocation = showLocation;
	}
	final String? showManufacturer = jsonConvert.convert<String>(json['show_manufacturer']);
	if (showManufacturer != null) {
		salesViewDataSettingResults.showManufacturer = showManufacturer;
	}
	final String? doctorNameInDrugProducts = jsonConvert.convert<String>(json['doctor_name_in_drug_products']);
	if (doctorNameInDrugProducts != null) {
		salesViewDataSettingResults.doctorNameInDrugProducts = doctorNameInDrugProducts;
	}
	final String? shortbookItemAlert = jsonConvert.convert<String>(json['shortbook_item_alert']);
	if (shortbookItemAlert != null) {
		salesViewDataSettingResults.shortbookItemAlert = shortbookItemAlert;
	}
	final String? wholesaleReturnDefaultPaymentMode = jsonConvert.convert<String>(json['wholesale_return_default_payment_mode']);
	if (wholesaleReturnDefaultPaymentMode != null) {
		salesViewDataSettingResults.wholesaleReturnDefaultPaymentMode = wholesaleReturnDefaultPaymentMode;
	}
	final String? printDistributorsName = jsonConvert.convert<String>(json['print_distributors_name']);
	if (printDistributorsName != null) {
		salesViewDataSettingResults.printDistributorsName = printDistributorsName;
	}
	final String? gmailAccesstoken = jsonConvert.convert<String>(json['gmail_accesstoken']);
	if (gmailAccesstoken != null) {
		salesViewDataSettingResults.gmailAccesstoken = gmailAccesstoken;
	}
	final String? invoicePaperSize = jsonConvert.convert<String>(json['invoice_paper_size']);
	if (invoicePaperSize != null) {
		salesViewDataSettingResults.invoicePaperSize = invoicePaperSize;
	}
	final String? showGstPercentage = jsonConvert.convert<String>(json['show_gst_percentage']);
	if (showGstPercentage != null) {
		salesViewDataSettingResults.showGstPercentage = showGstPercentage;
	}
	final String? greetingMessage = jsonConvert.convert<String>(json['greeting_message']);
	if (greetingMessage != null) {
		salesViewDataSettingResults.greetingMessage = greetingMessage;
	}
	final String? autoPoToDistributor = jsonConvert.convert<String>(json['auto_po_to_distributor']);
	if (autoPoToDistributor != null) {
		salesViewDataSettingResults.autoPoToDistributor = autoPoToDistributor;
	}
	final String? totalNoItemToReconcile = jsonConvert.convert<String>(json['total_no_item_to_reconcile']);
	if (totalNoItemToReconcile != null) {
		salesViewDataSettingResults.totalNoItemToReconcile = totalNoItemToReconcile;
	}
	final String? showDoctorAddress = jsonConvert.convert<String>(json['show_doctor_address']);
	if (showDoctorAddress != null) {
		salesViewDataSettingResults.showDoctorAddress = showDoctorAddress;
	}
	final String? ewayGspPassword = jsonConvert.convert<String>(json['eway_gsp_password']);
	if (ewayGspPassword != null) {
		salesViewDataSettingResults.ewayGspPassword = ewayGspPassword;
	}
	final String? salesExtraChargesLabel = jsonConvert.convert<String>(json['sales_extra_charges_label']);
	if (salesExtraChargesLabel != null) {
		salesViewDataSettingResults.salesExtraChargesLabel = salesExtraChargesLabel;
	}
	final String? printSalesDraft = jsonConvert.convert<String>(json['print_sales_draft']);
	if (printSalesDraft != null) {
		salesViewDataSettingResults.printSalesDraft = printSalesDraft;
	}
	final String? lockWholesaleReturnBills = jsonConvert.convert<String>(json['lock_wholesale_return_bills']);
	if (lockWholesaleReturnBills != null) {
		salesViewDataSettingResults.lockWholesaleReturnBills = lockWholesaleReturnBills;
	}
	final String? lockSalesBills = jsonConvert.convert<String>(json['lock_sales_bills']);
	if (lockSalesBills != null) {
		salesViewDataSettingResults.lockSalesBills = lockSalesBills;
	}
	final String? shortbookWhatsapp = jsonConvert.convert<String>(json['shortbook_whatsapp']);
	if (shortbookWhatsapp != null) {
		salesViewDataSettingResults.shortbookWhatsapp = shortbookWhatsapp;
	}
	final String? dunzoIntegration = jsonConvert.convert<String>(json['dunzo_integration']);
	if (dunzoIntegration != null) {
		salesViewDataSettingResults.dunzoIntegration = dunzoIntegration;
	}
	final String? showScheduleType = jsonConvert.convert<String>(json['show_schedule_type']);
	if (showScheduleType != null) {
		salesViewDataSettingResults.showScheduleType = showScheduleType;
	}
	final String? salesPrefix = jsonConvert.convert<String>(json['sales_prefix']);
	if (salesPrefix != null) {
		salesViewDataSettingResults.salesPrefix = salesPrefix;
	}
	final String? acceptDeliveryOrder = jsonConvert.convert<String>(json['accept_delivery_order']);
	if (acceptDeliveryOrder != null) {
		salesViewDataSettingResults.acceptDeliveryOrder = acceptDeliveryOrder;
	}
	final String? twoInvoices = jsonConvert.convert<String>(json['two_invoices']);
	if (twoInvoices != null) {
		salesViewDataSettingResults.twoInvoices = twoInvoices;
	}
	final String? showHsnCode = jsonConvert.convert<String>(json['show_hsn_code']);
	if (showHsnCode != null) {
		salesViewDataSettingResults.showHsnCode = showHsnCode;
	}
	final String? purchaseDefaultPaymentMode = jsonConvert.convert<String>(json['purchase_default_payment_mode']);
	if (purchaseDefaultPaymentMode != null) {
		salesViewDataSettingResults.purchaseDefaultPaymentMode = purchaseDefaultPaymentMode;
	}
	final String? printSaleRateNotMrp = jsonConvert.convert<String>(json['print_sale_rate_not_mrp']);
	if (printSaleRateNotMrp != null) {
		salesViewDataSettingResults.printSaleRateNotMrp = printSaleRateNotMrp;
	}
	final String? edcPartner = jsonConvert.convert<String>(json['edc_partner']);
	if (edcPartner != null) {
		salesViewDataSettingResults.edcPartner = edcPartner;
	}
	final String? additionalSecurity = jsonConvert.convert<String>(json['additional_security']);
	if (additionalSecurity != null) {
		salesViewDataSettingResults.additionalSecurity = additionalSecurity;
	}
	final String? searchWithAlias = jsonConvert.convert<String>(json['search_with_alias']);
	if (searchWithAlias != null) {
		salesViewDataSettingResults.searchWithAlias = searchWithAlias;
	}
	final String? acceptInStockOrder = jsonConvert.convert<String>(json['accept_in_stock_order']);
	if (acceptInStockOrder != null) {
		salesViewDataSettingResults.acceptInStockOrder = acceptInStockOrder;
	}
	final String? allowNegativeSales = jsonConvert.convert<String>(json['allow_negative_sales']);
	if (allowNegativeSales != null) {
		salesViewDataSettingResults.allowNegativeSales = allowNegativeSales;
	}
	final String? smsSenderId = jsonConvert.convert<String>(json['sms_sender_id']);
	if (smsSenderId != null) {
		salesViewDataSettingResults.smsSenderId = smsSenderId;
	}
	final String? mergePo = jsonConvert.convert<String>(json['merge_po']);
	if (mergePo != null) {
		salesViewDataSettingResults.mergePo = mergePo;
	}
	final String? customerLabel = jsonConvert.convert<String>(json['customer_label']);
	if (customerLabel != null) {
		salesViewDataSettingResults.customerLabel = customerLabel;
	}
	final String? acceptPickupOrder = jsonConvert.convert<String>(json['accept_pickup_order']);
	if (acceptPickupOrder != null) {
		salesViewDataSettingResults.acceptPickupOrder = acceptPickupOrder;
	}
	final String? featureSmartBanking = jsonConvert.convert<String>(json['feature_smart_banking']);
	if (featureSmartBanking != null) {
		salesViewDataSettingResults.featureSmartBanking = featureSmartBanking;
	}
	final String? showDiscountedPrice = jsonConvert.convert<String>(json['show_discounted_price']);
	if (showDiscountedPrice != null) {
		salesViewDataSettingResults.showDiscountedPrice = showDiscountedPrice;
	}
	final String? updateStockWhileReconciling = jsonConvert.convert<String>(json['update_stock_while_reconciling']);
	if (updateStockWhileReconciling != null) {
		salesViewDataSettingResults.updateStockWhileReconciling = updateStockWhileReconciling;
	}
	final String? autoPoToHo = jsonConvert.convert<String>(json['auto_po_to_ho']);
	if (autoPoToHo != null) {
		salesViewDataSettingResults.autoPoToHo = autoPoToHo;
	}
	final String? lockWholesaleBills = jsonConvert.convert<String>(json['lock_wholesale_bills']);
	if (lockWholesaleBills != null) {
		salesViewDataSettingResults.lockWholesaleBills = lockWholesaleBills;
	}
	final String? debitCard = jsonConvert.convert<String>(json['debit_card']);
	if (debitCard != null) {
		salesViewDataSettingResults.debitCard = debitCard;
	}
	final String? netBanking = jsonConvert.convert<String>(json['net_banking']);
	if (netBanking != null) {
		salesViewDataSettingResults.netBanking = netBanking;
	}
	final String? edcIntegration = jsonConvert.convert<String>(json['edc_integration']);
	if (edcIntegration != null) {
		salesViewDataSettingResults.edcIntegration = edcIntegration;
	}
	final String? purchaseReturnDefaultPaymentMode = jsonConvert.convert<String>(json['purchase_return_default_payment_mode']);
	if (purchaseReturnDefaultPaymentMode != null) {
		salesViewDataSettingResults.purchaseReturnDefaultPaymentMode = purchaseReturnDefaultPaymentMode;
	}
	final String? doctorNameInScheduleProducts = jsonConvert.convert<String>(json['doctor_name_in_schedule_products']);
	if (doctorNameInScheduleProducts != null) {
		salesViewDataSettingResults.doctorNameInScheduleProducts = doctorNameInScheduleProducts;
	}
	final String? generateReturnFromPurchaseOnly = jsonConvert.convert<String>(json['generate_return_from_purchase_only']);
	if (generateReturnFromPurchaseOnly != null) {
		salesViewDataSettingResults.generateReturnFromPurchaseOnly = generateReturnFromPurchaseOnly;
	}
	final String? poNumberInGatePass = jsonConvert.convert<String>(json['po_number_in_gate_pass']);
	if (poNumberInGatePass != null) {
		salesViewDataSettingResults.poNumberInGatePass = poNumberInGatePass;
	}
	final String? lockWholesaleItem = jsonConvert.convert<String>(json['lock_wholesale_item']);
	if (lockWholesaleItem != null) {
		salesViewDataSettingResults.lockWholesaleItem = lockWholesaleItem;
	}
	final String? vitrunIntegration = jsonConvert.convert<String>(json['vitrun_integration']);
	if (vitrunIntegration != null) {
		salesViewDataSettingResults.vitrunIntegration = vitrunIntegration;
	}
	final String? setCustomerMobileNumberSecure = jsonConvert.convert<String>(json['set_customer_mobile_number_secure']);
	if (setCustomerMobileNumberSecure != null) {
		salesViewDataSettingResults.setCustomerMobileNumberSecure = setCustomerMobileNumberSecure;
	}
	final String? showSaleRate = jsonConvert.convert<String>(json['show_sale_rate']);
	if (showSaleRate != null) {
		salesViewDataSettingResults.showSaleRate = showSaleRate;
	}
	final String? searchInventoryOnly = jsonConvert.convert<String>(json['search_inventory_only']);
	if (searchInventoryOnly != null) {
		salesViewDataSettingResults.searchInventoryOnly = searchInventoryOnly;
	}
	final String? wholesaleWhatsappMsg = jsonConvert.convert<String>(json['wholesale_whatsapp_msg']);
	if (wholesaleWhatsappMsg != null) {
		salesViewDataSettingResults.wholesaleWhatsappMsg = wholesaleWhatsappMsg;
	}
	final String? salesWhatsapp = jsonConvert.convert<String>(json['sales_whatsapp']);
	if (salesWhatsapp != null) {
		salesViewDataSettingResults.salesWhatsapp = salesWhatsapp;
	}
	final String? sendCustomizedSmsForCustomer = jsonConvert.convert<String>(json['send_customized_sms_for_customer']);
	if (sendCustomizedSmsForCustomer != null) {
		salesViewDataSettingResults.sendCustomizedSmsForCustomer = sendCustomizedSmsForCustomer;
	}
	final String? purchaseOn = jsonConvert.convert<String>(json['purchase_on']);
	if (purchaseOn != null) {
		salesViewDataSettingResults.purchaseOn = purchaseOn;
	}
	final String? wholesalePrefix = jsonConvert.convert<String>(json['wholesale_prefix']);
	if (wholesalePrefix != null) {
		salesViewDataSettingResults.wholesalePrefix = wholesalePrefix;
	}
	final String? attachPoMandatory = jsonConvert.convert<String>(json['attach_po_mandatory']);
	if (attachPoMandatory != null) {
		salesViewDataSettingResults.attachPoMandatory = attachPoMandatory;
	}
	final String? shortbookSms = jsonConvert.convert<String>(json['shortbook_sms']);
	if (shortbookSms != null) {
		salesViewDataSettingResults.shortbookSms = shortbookSms;
	}
	final String? featurePaymentGateway = jsonConvert.convert<String>(json['feature_payment_gateway']);
	if (featurePaymentGateway != null) {
		salesViewDataSettingResults.featurePaymentGateway = featurePaymentGateway;
	}
	final String? paytmWallet = jsonConvert.convert<String>(json['paytm_wallet']);
	if (paytmWallet != null) {
		salesViewDataSettingResults.paytmWallet = paytmWallet;
	}
	final String? termsAndConditions = jsonConvert.convert<String>(json['terms_and_conditions']);
	if (termsAndConditions != null) {
		salesViewDataSettingResults.termsAndConditions = termsAndConditions;
	}
	final String? shippingCharges = jsonConvert.convert<String>(json['shipping_charges']);
	if (shippingCharges != null) {
		salesViewDataSettingResults.shippingCharges = shippingCharges;
	}
	final String? ewayGspUsername = jsonConvert.convert<String>(json['eway_gsp_username']);
	if (ewayGspUsername != null) {
		salesViewDataSettingResults.ewayGspUsername = ewayGspUsername;
	}
	final String? attachGatePassMandatory = jsonConvert.convert<String>(json['attach_gate_pass_mandatory']);
	if (attachGatePassMandatory != null) {
		salesViewDataSettingResults.attachGatePassMandatory = attachGatePassMandatory;
	}
	final String? lockItem = jsonConvert.convert<String>(json['lock_item']);
	if (lockItem != null) {
		salesViewDataSettingResults.lockItem = lockItem;
	}
	final String? minimumOrderValue = jsonConvert.convert<String>(json['minimum_order_value']);
	if (minimumOrderValue != null) {
		salesViewDataSettingResults.minimumOrderValue = minimumOrderValue;
	}
	final String? marginSafetyNetB2c = jsonConvert.convert<String>(json['margin_safety_net_b2c']);
	if (marginSafetyNetB2c != null) {
		salesViewDataSettingResults.marginSafetyNetB2c = marginSafetyNetB2c;
	}
	final String? storePageMedicineSearch = jsonConvert.convert<String>(json['store_page_medicine_search']);
	if (storePageMedicineSearch != null) {
		salesViewDataSettingResults.storePageMedicineSearch = storePageMedicineSearch;
	}
	final String? lockPurchaseBills = jsonConvert.convert<String>(json['lock_purchase_bills']);
	if (lockPurchaseBills != null) {
		salesViewDataSettingResults.lockPurchaseBills = lockPurchaseBills;
	}
	final String? printPharmacyName = jsonConvert.convert<String>(json['print_pharmacy_name']);
	if (printPharmacyName != null) {
		salesViewDataSettingResults.printPharmacyName = printPharmacyName;
	}
	final String? purchaseDueDays = jsonConvert.convert<String>(json['purchase_due_days']);
	if (purchaseDueDays != null) {
		salesViewDataSettingResults.purchaseDueDays = purchaseDueDays;
	}
	final String? whatsappNumber = jsonConvert.convert<String>(json['whatsapp_number']);
	if (whatsappNumber != null) {
		salesViewDataSettingResults.whatsappNumber = whatsappNumber;
	}
	final String? sellingUnit = jsonConvert.convert<String>(json['selling_unit']);
	if (sellingUnit != null) {
		salesViewDataSettingResults.sellingUnit = sellingUnit;
	}
	final String? generateReturnFromSalesOnly = jsonConvert.convert<String>(json['generate_return_from_sales_only']);
	if (generateReturnFromSalesOnly != null) {
		salesViewDataSettingResults.generateReturnFromSalesOnly = generateReturnFromSalesOnly;
	}
	final String? lockSalesReturnBills = jsonConvert.convert<String>(json['lock_sales_return_bills']);
	if (lockSalesReturnBills != null) {
		salesViewDataSettingResults.lockSalesReturnBills = lockSalesReturnBills;
	}
	final String? removeShortbook = jsonConvert.convert<String>(json['remove_shortbook']);
	if (removeShortbook != null) {
		salesViewDataSettingResults.removeShortbook = removeShortbook;
	}
	final String? invoiceTitle = jsonConvert.convert<String>(json['invoice_title']);
	if (invoiceTitle != null) {
		salesViewDataSettingResults.invoiceTitle = invoiceTitle;
	}
	final String? sendEmailToVendor = jsonConvert.convert<String>(json['send_email_to_vendor']);
	if (sendEmailToVendor != null) {
		salesViewDataSettingResults.sendEmailToVendor = sendEmailToVendor;
	}
	final String? lockPurchaseReturnBills = jsonConvert.convert<String>(json['lock_purchase_return_bills']);
	if (lockPurchaseReturnBills != null) {
		salesViewDataSettingResults.lockPurchaseReturnBills = lockPurchaseReturnBills;
	}
	final String? wholesaleDefaultPaymentMode = jsonConvert.convert<String>(json['wholesale_default_payment_mode']);
	if (wholesaleDefaultPaymentMode != null) {
		salesViewDataSettingResults.wholesaleDefaultPaymentMode = wholesaleDefaultPaymentMode;
	}
	final String? purchaseExtraChargesLabel = jsonConvert.convert<String>(json['purchase_extra_charges_label']);
	if (purchaseExtraChargesLabel != null) {
		salesViewDataSettingResults.purchaseExtraChargesLabel = purchaseExtraChargesLabel;
	}
	final String? preprintedBill = jsonConvert.convert<String>(json['preprinted_bill']);
	if (preprintedBill != null) {
		salesViewDataSettingResults.preprintedBill = preprintedBill;
	}
	final String? salesReturnDefaultPaymentMode = jsonConvert.convert<String>(json['sales_return_default_payment_mode']);
	if (salesReturnDefaultPaymentMode != null) {
		salesViewDataSettingResults.salesReturnDefaultPaymentMode = salesReturnDefaultPaymentMode;
	}
	final String? showInventoryMedicines = jsonConvert.convert<String>(json['show_inventory_medicines']);
	if (showInventoryMedicines != null) {
		salesViewDataSettingResults.showInventoryMedicines = showInventoryMedicines;
	}
	final String? inventoryReconciliation = jsonConvert.convert<String>(json['inventory_reconciliation']);
	if (inventoryReconciliation != null) {
		salesViewDataSettingResults.inventoryReconciliation = inventoryReconciliation;
	}
	final String? showDiscountPercentage = jsonConvert.convert<String>(json['show_discount_percentage']);
	if (showDiscountPercentage != null) {
		salesViewDataSettingResults.showDiscountPercentage = showDiscountPercentage;
	}
	final String? termsAndConditionsWholesale = jsonConvert.convert<String>(json['terms_and_conditions_wholesale']);
	if (termsAndConditionsWholesale != null) {
		salesViewDataSettingResults.termsAndConditionsWholesale = termsAndConditionsWholesale;
	}
	final String? defaultLanguage = jsonConvert.convert<String>(json['default_language']);
	if (defaultLanguage != null) {
		salesViewDataSettingResults.defaultLanguage = defaultLanguage;
	}
	final String? marginSafetyNetB2b = jsonConvert.convert<String>(json['margin_safety_net_b2b']);
	if (marginSafetyNetB2b != null) {
		salesViewDataSettingResults.marginSafetyNetB2b = marginSafetyNetB2b;
	}
	final String? reminderBefore = jsonConvert.convert<String>(json['reminder_before']);
	if (reminderBefore != null) {
		salesViewDataSettingResults.reminderBefore = reminderBefore;
	}
	return salesViewDataSettingResults;
}

Map<String, dynamic> $SalesViewDataSettingResultsToJson(SalesViewDataSettingResults entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['display_phone_number'] = entity.displayPhoneNumber;
	data['loyalty_point'] = entity.loyaltyPoint;
	data['redeem_loyalty_point'] = entity.redeemLoyaltyPoint;
	data['redeem_loyalty_point_percentage'] = entity.redeemLoyaltyPointPercentage;
	data['annual_reconciliation_on'] = entity.annualReconciliationOn;
	data['cash_management'] = entity.cashManagement;
	data['restrict_item_high_po'] = entity.restrictItemHighPo;
	data['auto_min_max'] = entity.autoMinMax;
	data['allow_negative_purchase_return'] = entity.allowNegativePurchaseReturn;
	data['po_prefix'] = entity.poPrefix;
	data['sale_default_payment_mode'] = entity.saleDefaultPaymentMode;
	data['sales_sms'] = entity.salesSms;
	data['qrcode_label'] = entity.qrcodeLabel;
	data['upi'] = entity.upi;
	data['credit_card'] = entity.creditCard;
	data['margin_on_ptr'] = entity.marginOnPtr;
	data['show_location'] = entity.showLocation;
	data['show_manufacturer'] = entity.showManufacturer;
	data['doctor_name_in_drug_products'] = entity.doctorNameInDrugProducts;
	data['shortbook_item_alert'] = entity.shortbookItemAlert;
	data['wholesale_return_default_payment_mode'] = entity.wholesaleReturnDefaultPaymentMode;
	data['print_distributors_name'] = entity.printDistributorsName;
	data['gmail_accesstoken'] = entity.gmailAccesstoken;
	data['invoice_paper_size'] = entity.invoicePaperSize;
	data['show_gst_percentage'] = entity.showGstPercentage;
	data['greeting_message'] = entity.greetingMessage;
	data['auto_po_to_distributor'] = entity.autoPoToDistributor;
	data['total_no_item_to_reconcile'] = entity.totalNoItemToReconcile;
	data['show_doctor_address'] = entity.showDoctorAddress;
	data['eway_gsp_password'] = entity.ewayGspPassword;
	data['sales_extra_charges_label'] = entity.salesExtraChargesLabel;
	data['print_sales_draft'] = entity.printSalesDraft;
	data['lock_wholesale_return_bills'] = entity.lockWholesaleReturnBills;
	data['lock_sales_bills'] = entity.lockSalesBills;
	data['shortbook_whatsapp'] = entity.shortbookWhatsapp;
	data['dunzo_integration'] = entity.dunzoIntegration;
	data['show_schedule_type'] = entity.showScheduleType;
	data['sales_prefix'] = entity.salesPrefix;
	data['accept_delivery_order'] = entity.acceptDeliveryOrder;
	data['two_invoices'] = entity.twoInvoices;
	data['show_hsn_code'] = entity.showHsnCode;
	data['purchase_default_payment_mode'] = entity.purchaseDefaultPaymentMode;
	data['print_sale_rate_not_mrp'] = entity.printSaleRateNotMrp;
	data['edc_partner'] = entity.edcPartner;
	data['additional_security'] = entity.additionalSecurity;
	data['search_with_alias'] = entity.searchWithAlias;
	data['accept_in_stock_order'] = entity.acceptInStockOrder;
	data['allow_negative_sales'] = entity.allowNegativeSales;
	data['sms_sender_id'] = entity.smsSenderId;
	data['merge_po'] = entity.mergePo;
	data['customer_label'] = entity.customerLabel;
	data['accept_pickup_order'] = entity.acceptPickupOrder;
	data['feature_smart_banking'] = entity.featureSmartBanking;
	data['show_discounted_price'] = entity.showDiscountedPrice;
	data['update_stock_while_reconciling'] = entity.updateStockWhileReconciling;
	data['auto_po_to_ho'] = entity.autoPoToHo;
	data['lock_wholesale_bills'] = entity.lockWholesaleBills;
	data['debit_card'] = entity.debitCard;
	data['net_banking'] = entity.netBanking;
	data['edc_integration'] = entity.edcIntegration;
	data['purchase_return_default_payment_mode'] = entity.purchaseReturnDefaultPaymentMode;
	data['doctor_name_in_schedule_products'] = entity.doctorNameInScheduleProducts;
	data['generate_return_from_purchase_only'] = entity.generateReturnFromPurchaseOnly;
	data['po_number_in_gate_pass'] = entity.poNumberInGatePass;
	data['lock_wholesale_item'] = entity.lockWholesaleItem;
	data['vitrun_integration'] = entity.vitrunIntegration;
	data['set_customer_mobile_number_secure'] = entity.setCustomerMobileNumberSecure;
	data['show_sale_rate'] = entity.showSaleRate;
	data['search_inventory_only'] = entity.searchInventoryOnly;
	data['wholesale_whatsapp_msg'] = entity.wholesaleWhatsappMsg;
	data['sales_whatsapp'] = entity.salesWhatsapp;
	data['send_customized_sms_for_customer'] = entity.sendCustomizedSmsForCustomer;
	data['purchase_on'] = entity.purchaseOn;
	data['wholesale_prefix'] = entity.wholesalePrefix;
	data['attach_po_mandatory'] = entity.attachPoMandatory;
	data['shortbook_sms'] = entity.shortbookSms;
	data['feature_payment_gateway'] = entity.featurePaymentGateway;
	data['paytm_wallet'] = entity.paytmWallet;
	data['terms_and_conditions'] = entity.termsAndConditions;
	data['shipping_charges'] = entity.shippingCharges;
	data['eway_gsp_username'] = entity.ewayGspUsername;
	data['attach_gate_pass_mandatory'] = entity.attachGatePassMandatory;
	data['lock_item'] = entity.lockItem;
	data['minimum_order_value'] = entity.minimumOrderValue;
	data['margin_safety_net_b2c'] = entity.marginSafetyNetB2c;
	data['store_page_medicine_search'] = entity.storePageMedicineSearch;
	data['lock_purchase_bills'] = entity.lockPurchaseBills;
	data['print_pharmacy_name'] = entity.printPharmacyName;
	data['purchase_due_days'] = entity.purchaseDueDays;
	data['whatsapp_number'] = entity.whatsappNumber;
	data['selling_unit'] = entity.sellingUnit;
	data['generate_return_from_sales_only'] = entity.generateReturnFromSalesOnly;
	data['lock_sales_return_bills'] = entity.lockSalesReturnBills;
	data['remove_shortbook'] = entity.removeShortbook;
	data['invoice_title'] = entity.invoiceTitle;
	data['send_email_to_vendor'] = entity.sendEmailToVendor;
	data['lock_purchase_return_bills'] = entity.lockPurchaseReturnBills;
	data['wholesale_default_payment_mode'] = entity.wholesaleDefaultPaymentMode;
	data['purchase_extra_charges_label'] = entity.purchaseExtraChargesLabel;
	data['preprinted_bill'] = entity.preprintedBill;
	data['sales_return_default_payment_mode'] = entity.salesReturnDefaultPaymentMode;
	data['show_inventory_medicines'] = entity.showInventoryMedicines;
	data['inventory_reconciliation'] = entity.inventoryReconciliation;
	data['show_discount_percentage'] = entity.showDiscountPercentage;
	data['terms_and_conditions_wholesale'] = entity.termsAndConditionsWholesale;
	data['default_language'] = entity.defaultLanguage;
	data['margin_safety_net_b2b'] = entity.marginSafetyNetB2b;
	data['reminder_before'] = entity.reminderBefore;
	return data;
}

SalesViewDataPaymentMethods $SalesViewDataPaymentMethodsFromJson(Map<String, dynamic> json) {
	final SalesViewDataPaymentMethods salesViewDataPaymentMethods = SalesViewDataPaymentMethods();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		salesViewDataPaymentMethods.id = id;
	}
	final String? methodName = jsonConvert.convert<String>(json['method_name']);
	if (methodName != null) {
		salesViewDataPaymentMethods.methodName = methodName;
	}
	final String? imageName = jsonConvert.convert<String>(json['image_name']);
	if (imageName != null) {
		salesViewDataPaymentMethods.imageName = imageName;
	}
	final String? paymentGroup = jsonConvert.convert<String>(json['payment_group']);
	if (paymentGroup != null) {
		salesViewDataPaymentMethods.paymentGroup = paymentGroup;
	}
	final String? imageUrl = jsonConvert.convert<String>(json['image_url']);
	if (imageUrl != null) {
		salesViewDataPaymentMethods.imageUrl = imageUrl;
	}
	return salesViewDataPaymentMethods;
}

Map<String, dynamic> $SalesViewDataPaymentMethodsToJson(SalesViewDataPaymentMethods entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['method_name'] = entity.methodName;
	data['image_name'] = entity.imageName;
	data['payment_group'] = entity.paymentGroup;
	data['image_url'] = entity.imageUrl;
	return data;
}

SalesViewDataAdjustmentPaymentMethods $SalesViewDataAdjustmentPaymentMethodsFromJson(Map<String, dynamic> json) {
	final SalesViewDataAdjustmentPaymentMethods salesViewDataAdjustmentPaymentMethods = SalesViewDataAdjustmentPaymentMethods();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		salesViewDataAdjustmentPaymentMethods.id = id;
	}
	final String? methodName = jsonConvert.convert<String>(json['method_name']);
	if (methodName != null) {
		salesViewDataAdjustmentPaymentMethods.methodName = methodName;
	}
	final String? imageName = jsonConvert.convert<String>(json['image_name']);
	if (imageName != null) {
		salesViewDataAdjustmentPaymentMethods.imageName = imageName;
	}
	final String? paymentGroup = jsonConvert.convert<String>(json['payment_group']);
	if (paymentGroup != null) {
		salesViewDataAdjustmentPaymentMethods.paymentGroup = paymentGroup;
	}
	final String? imageUrl = jsonConvert.convert<String>(json['image_url']);
	if (imageUrl != null) {
		salesViewDataAdjustmentPaymentMethods.imageUrl = imageUrl;
	}
	return salesViewDataAdjustmentPaymentMethods;
}

Map<String, dynamic> $SalesViewDataAdjustmentPaymentMethodsToJson(SalesViewDataAdjustmentPaymentMethods entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['method_name'] = entity.methodName;
	data['image_name'] = entity.imageName;
	data['payment_group'] = entity.paymentGroup;
	data['image_url'] = entity.imageUrl;
	return data;
}

SalesViewDataMedicineReminderDetails $SalesViewDataMedicineReminderDetailsFromJson(Map<String, dynamic> json) {
	final SalesViewDataMedicineReminderDetails salesViewDataMedicineReminderDetails = SalesViewDataMedicineReminderDetails();
	return salesViewDataMedicineReminderDetails;
}

Map<String, dynamic> $SalesViewDataMedicineReminderDetailsToJson(SalesViewDataMedicineReminderDetails entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}

SalesViewDataStaffList $SalesViewDataStaffListFromJson(Map<String, dynamic> json) {
	final SalesViewDataStaffList salesViewDataStaffList = SalesViewDataStaffList();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		salesViewDataStaffList.id = id;
	}
	final String? fullname = jsonConvert.convert<String>(json['fullname']);
	if (fullname != null) {
		salesViewDataStaffList.fullname = fullname;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		salesViewDataStaffList.status = status;
	}
	final String? entity = jsonConvert.convert<String>(json['entity']);
	if (entity != null) {
		salesViewDataStaffList.entity = entity;
	}
	final String? firstname = jsonConvert.convert<String>(json['firstname']);
	if (firstname != null) {
		salesViewDataStaffList.firstname = firstname;
	}
	final String? lastname = jsonConvert.convert<String>(json['lastname']);
	if (lastname != null) {
		salesViewDataStaffList.lastname = lastname;
	}
	final int? roleId = jsonConvert.convert<int>(json['role_id']);
	if (roleId != null) {
		salesViewDataStaffList.roleId = roleId;
	}
	final String? roleName = jsonConvert.convert<String>(json['role_name']);
	if (roleName != null) {
		salesViewDataStaffList.roleName = roleName;
	}
	return salesViewDataStaffList;
}

Map<String, dynamic> $SalesViewDataStaffListToJson(SalesViewDataStaffList entity) {
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

SalesViewDataFamilyMemberList $SalesViewDataFamilyMemberListFromJson(Map<String, dynamic> json) {
	final SalesViewDataFamilyMemberList salesViewDataFamilyMemberList = SalesViewDataFamilyMemberList();
	final String? relation = jsonConvert.convert<String>(json['relation']);
	if (relation != null) {
		salesViewDataFamilyMemberList.relation = relation;
	}
	final String? fullname = jsonConvert.convert<String>(json['fullname']);
	if (fullname != null) {
		salesViewDataFamilyMemberList.fullname = fullname;
	}
	final String? mobile = jsonConvert.convert<String>(json['mobile']);
	if (mobile != null) {
		salesViewDataFamilyMemberList.mobile = mobile;
	}
	final int? patientFamilyMemberId = jsonConvert.convert<int>(json['patient_family_member_id']);
	if (patientFamilyMemberId != null) {
		salesViewDataFamilyMemberList.patientFamilyMemberId = patientFamilyMemberId;
	}
	final List<SalesViewDataFamilyMemberListAddresses>? addresses = jsonConvert.convertListNotNull<SalesViewDataFamilyMemberListAddresses>(json['addresses']);
	if (addresses != null) {
		salesViewDataFamilyMemberList.addresses = addresses;
	}
	final String? firstname = jsonConvert.convert<String>(json['firstname']);
	if (firstname != null) {
		salesViewDataFamilyMemberList.firstname = firstname;
	}
	final String? lastname = jsonConvert.convert<String>(json['lastname']);
	if (lastname != null) {
		salesViewDataFamilyMemberList.lastname = lastname;
	}
	final int? discountPercentage = jsonConvert.convert<int>(json['discount_percentage']);
	if (discountPercentage != null) {
		salesViewDataFamilyMemberList.discountPercentage = discountPercentage;
	}
	return salesViewDataFamilyMemberList;
}

Map<String, dynamic> $SalesViewDataFamilyMemberListToJson(SalesViewDataFamilyMemberList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['relation'] = entity.relation;
	data['fullname'] = entity.fullname;
	data['mobile'] = entity.mobile;
	data['patient_family_member_id'] = entity.patientFamilyMemberId;
	data['addresses'] =  entity.addresses?.map((v) => v.toJson()).toList();
	data['firstname'] = entity.firstname;
	data['lastname'] = entity.lastname;
	data['discount_percentage'] = entity.discountPercentage;
	return data;
}

SalesViewDataFamilyMemberListAddresses $SalesViewDataFamilyMemberListAddressesFromJson(Map<String, dynamic> json) {
	final SalesViewDataFamilyMemberListAddresses salesViewDataFamilyMemberListAddresses = SalesViewDataFamilyMemberListAddresses();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		salesViewDataFamilyMemberListAddresses.id = id;
	}
	final int? userId = jsonConvert.convert<int>(json['user_id']);
	if (userId != null) {
		salesViewDataFamilyMemberListAddresses.userId = userId;
	}
	final String? addressName = jsonConvert.convert<String>(json['address_name']);
	if (addressName != null) {
		salesViewDataFamilyMemberListAddresses.addressName = addressName;
	}
	final String? address = jsonConvert.convert<String>(json['address']);
	if (address != null) {
		salesViewDataFamilyMemberListAddresses.address = address;
	}
	final String? addressLine2 = jsonConvert.convert<String>(json['address_line2']);
	if (addressLine2 != null) {
		salesViewDataFamilyMemberListAddresses.addressLine2 = addressLine2;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		salesViewDataFamilyMemberListAddresses.city = city;
	}
	final String? state = jsonConvert.convert<String>(json['state']);
	if (state != null) {
		salesViewDataFamilyMemberListAddresses.state = state;
	}
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		salesViewDataFamilyMemberListAddresses.country = country;
	}
	final String? zipcode = jsonConvert.convert<String>(json['zipcode']);
	if (zipcode != null) {
		salesViewDataFamilyMemberListAddresses.zipcode = zipcode;
	}
	final String? isDefault = jsonConvert.convert<String>(json['is_default']);
	if (isDefault != null) {
		salesViewDataFamilyMemberListAddresses.isDefault = isDefault;
	}
	final String? latitude = jsonConvert.convert<String>(json['latitude']);
	if (latitude != null) {
		salesViewDataFamilyMemberListAddresses.latitude = latitude;
	}
	final String? longitude = jsonConvert.convert<String>(json['longitude']);
	if (longitude != null) {
		salesViewDataFamilyMemberListAddresses.longitude = longitude;
	}
	return salesViewDataFamilyMemberListAddresses;
}

Map<String, dynamic> $SalesViewDataFamilyMemberListAddressesToJson(SalesViewDataFamilyMemberListAddresses entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['user_id'] = entity.userId;
	data['address_name'] = entity.addressName;
	data['address'] = entity.address;
	data['address_line2'] = entity.addressLine2;
	data['city'] = entity.city;
	data['state'] = entity.state;
	data['country'] = entity.country;
	data['zipcode'] = entity.zipcode;
	data['is_default'] = entity.isDefault;
	data['latitude'] = entity.latitude;
	data['longitude'] = entity.longitude;
	return data;
}

SalesViewDataLoyaltyPointAllocations $SalesViewDataLoyaltyPointAllocationsFromJson(Map<String, dynamic> json) {
	final SalesViewDataLoyaltyPointAllocations salesViewDataLoyaltyPointAllocations = SalesViewDataLoyaltyPointAllocations();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		salesViewDataLoyaltyPointAllocations.id = id;
	}
	final String? medicineCategory = jsonConvert.convert<String>(json['medicine_category']);
	if (medicineCategory != null) {
		salesViewDataLoyaltyPointAllocations.medicineCategory = medicineCategory;
	}
	final int? itemCategoryId = jsonConvert.convert<int>(json['item_category_id']);
	if (itemCategoryId != null) {
		salesViewDataLoyaltyPointAllocations.itemCategoryId = itemCategoryId;
	}
	final int? points = jsonConvert.convert<int>(json['points']);
	if (points != null) {
		salesViewDataLoyaltyPointAllocations.points = points;
	}
	return salesViewDataLoyaltyPointAllocations;
}

Map<String, dynamic> $SalesViewDataLoyaltyPointAllocationsToJson(SalesViewDataLoyaltyPointAllocations entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['medicine_category'] = entity.medicineCategory;
	data['item_category_id'] = entity.itemCategoryId;
	data['points'] = entity.points;
	return data;
}