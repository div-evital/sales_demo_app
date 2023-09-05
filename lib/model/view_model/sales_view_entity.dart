import 'package:evital_sales/generated/json/base/json_field.dart';
import 'package:evital_sales/generated/json/sales_view_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class SalesViewEntity {

	@JSONField(name: "status_code")
	String? statusCode;
	@JSONField(name: "status_message")
	String? statusMessage;
	String? datetime;
	@JSONField(name: "ng_version")
	String? ngVersion;
	SalesViewData? data;
  
  SalesViewEntity();

  factory SalesViewEntity.fromJson(Map<String, dynamic> json) => $SalesViewEntityFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewData {

	@JSONField(name: "order_id")
	int? orderId;
	@JSONField(name: "chemist_id")
	int? chemistId;
	@JSONField(name: "patient_id")
	int? patientId;
	@JSONField(name: "parent_patient_id")
	int? parentPatientId;
	@JSONField(name: "user_id")
	int? userId;
	@JSONField(name: "doctor_id")
	int? doctorId;
	@JSONField(name: "order_number")
	String? orderNumber;
	@JSONField(name: "order_delivery_datetime")
	String? orderDeliveryDatetime;
	@JSONField(name: "created_date")
	String? createdDate;
	int? amount;
	int? discount;
	int? discountpercentage;
	int? redeembalance;
	int? total;
	@JSONField(name: "paid_amount")
	int? paidAmount;
	@JSONField(name: "payment_status")
	int? paymentStatus;
	@JSONField(name: "payment_date")
	String? paymentDate;
	@JSONField(name: "patient_name")
	String? patientName;
	double? margin;
	String? email;
	@JSONField(name: "order_by_id")
	int? orderById;
	@JSONField(name: "order_by_entity")
	String? orderByEntity;
	@JSONField(name: "reference_number")
	int? referenceNumber;
	@JSONField(name: "bill_no")
	String? billNo;
	@JSONField(name: "order_status")
	String? orderStatus;
	@JSONField(name: "adjustment_amount")
	int? adjustmentAmount;
	String? remark;
	String? address;
	@JSONField(name: "address_line2")
	String? addressLine2;
	String? city;
	String? zipcode;
	@JSONField(name: "attach_prescription")
	String? attachPrescription;
	@JSONField(name: "delivery_type")
	String? deliveryType;
	int? shipping;
	int? roundoff;
	@JSONField(name: "patient_note")
	String? patientNote;
	@JSONField(name: "delivery_note")
	String? deliveryNote;
	@JSONField(name: "order_mode")
	String? orderMode;
	@JSONField(name: "payment_mode")
	String? paymentMode;
	@JSONField(name: "payment_link")
	String? paymentLink;
	@JSONField(name: "ref_transaction_id")
	int? refTransactionId;
	@JSONField(name: "due_amount")
	int? dueAmount;
	@JSONField(name: "payment_ref_id")
	String? paymentRefId;
	double? latitude;
	double? longitude;
	@JSONField(name: "reject_reason")
	String? rejectReason;
	@JSONField(name: "order_assign_fail_reason")
	String? orderAssignFailReason;
	@JSONField(name: "earned_loyalty_points")
	int? earnedLoyaltyPoints;
	@JSONField(name: "redeemed_loyalty_points")
	int? redeemedLoyaltyPoints;
	@JSONField(name: "utm_source")
	String? utmSource;
	@JSONField(name: "utm_campaign")
	String? utmCampaign;
	@JSONField(name: "lock_bill")
	String? lockBill;
	@JSONField(name: "customer_registered_chemist_details")
	SalesViewDataCustomerRegisteredChemistDetails? customerRegisteredChemistDetails;
	String? mobile;
	@JSONField(name: "doctor_name")
	String? doctorName;
	@JSONField(name: "prescription_images")
	List<dynamic>? prescriptionImages;
	@JSONField(name: "cheque_number")
	String? chequeNumber;
	@JSONField(name: "cheque_date")
	String? chequeDate;
	@JSONField(name: "bank_transaction_remark")
	String? bankTransactionRemark;
	@JSONField(name: "cheque_amount")
	String? chequeAmount;
	@JSONField(name: "payment_cleared")
	String? paymentCleared;
	@JSONField(name: "is_dunzo_task")
	bool? isDunzoTask;
	@JSONField(name: "delivery_info")
	SalesViewDataDeliveryInfo? deliveryInfo;
	@JSONField(name: "total_qty")
	int? totalQty;
	@JSONField(name: "total_items")
	int? totalItems;
	@JSONField(name: "total_gst")
	double? totalGst;
	@JSONField(name: "total_cess")
	int? totalCess;
	@JSONField(name: "print_url")
	String? printUrl;
	@JSONField(name: "share_message")
	String? shareMessage;
	@JSONField(name: "sms_content")
	String? smsContent;
	List<SalesViewDataItems>? items;
	@JSONField(name: "invoice_url")
	String? invoiceUrl;
	@JSONField(name: "customer_details")
	SalesViewDataCustomerDetails? customerDetails;
	@JSONField(name: "billing_for_details")
	SalesViewDataBillingForDetails? billingForDetails;
	@JSONField(name: "setting_results")
	SalesViewDataSettingResults? settingResults;
	@JSONField(name: "payment_methods")
	List<SalesViewDataPaymentMethods>? paymentMethods;
	@JSONField(name: "adjustment_payment_methods")
	List<SalesViewDataAdjustmentPaymentMethods>? adjustmentPaymentMethods;
	@JSONField(name: "invoive_qrcode_url")
	String? invoiveQrcodeUrl;
	@JSONField(name: "pharmacy_logo")
	String? pharmacyLogo;
	@JSONField(name: "pharmacist_digital_signature")
	String? pharmacistDigitalSignature;
	@JSONField(name: "medicine_reminder_details")
	SalesViewDataMedicineReminderDetails? medicineReminderDetails;
	@JSONField(name: "previous_id")
	int? previousId;
	@JSONField(name: "next_id")
	int? nextId;
	@JSONField(name: "staff_list")
	List<SalesViewDataStaffList>? staffList;
	@JSONField(name: "family_member_list")
	List<SalesViewDataFamilyMemberList>? familyMemberList;
	@JSONField(name: "draft_by_id")
	int? draftById;
	@JSONField(name: "draft_by_entity")
	String? draftByEntity;
	@JSONField(name: "draft_id")
	int? draftId;
	@JSONField(name: "loyalty_point_allocations")
	List<SalesViewDataLoyaltyPointAllocations>? loyaltyPointAllocations;
	double? balance;
  
  SalesViewData();

  factory SalesViewData.fromJson(Map<String, dynamic> json) => $SalesViewDataFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewDataCustomerRegisteredChemistDetails {

	int? id;
	@JSONField(name: "pharmacy_name")
	String? pharmacyName;
	@JSONField(name: "pharmacist_name")
	String? pharmacistName;
	String? area;
	String? mobile;
	String? city;
	String? address;
	@JSONField(name: "address_line2")
	String? addressLine2;
	String? zipcode;
  
  SalesViewDataCustomerRegisteredChemistDetails();

  factory SalesViewDataCustomerRegisteredChemistDetails.fromJson(Map<String, dynamic> json) => $SalesViewDataCustomerRegisteredChemistDetailsFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataCustomerRegisteredChemistDetailsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewDataDeliveryInfo {

	@JSONField(name: "is_schedule_task")
	bool? isScheduleTask;
	List<dynamic>? actions;
  
  SalesViewDataDeliveryInfo();

  factory SalesViewDataDeliveryInfo.fromJson(Map<String, dynamic> json) => $SalesViewDataDeliveryInfoFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataDeliveryInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewDataItems {

	int? price;
	String? directions;
	int? quantity;
	int? mrp;
	int? discount;
	String? batch;
	String? expiry;
	double? gst;
	int? gstpercentage;
	int? amount;
	int? size;
	@JSONField(name: "medicine_name")
	String? medicineName;
	@JSONField(name: "pack_size")
	String? packSize;
	String? content;
	@JSONField(name: "dosage_type")
	String? dosageType;
	String? image;
	@JSONField(name: "medicine_id")
	int? medicineId;
	@JSONField(name: "manufacturer_name")
	String? manufacturerName;
	@JSONField(name: "hsn_code")
	String? hsnCode;
	@JSONField(name: "schedule_type")
	String? scheduleType;
	@JSONField(name: "medicine_type")
	String? medicineType;
	@JSONField(name: "packing_size")
	String? packingSize;
	@JSONField(name: "salt_content_id")
	int? saltContentId;
	int? cess;
	@JSONField(name: "cess_percentage")
	int? cessPercentage;
	@JSONField(name: "inventory_id")
	int? inventoryId;
	int? stock;
	@JSONField(name: "price_to_retailer")
	int? priceToRetailer;
	double? margin;
	@JSONField(name: "base_price")
	int? basePrice;
	@JSONField(name: "landing_price")
	double? landingPrice;
	String? location;
	@JSONField(name: "sale_discount")
	int? saleDiscount;
	@JSONField(name: "lock_discount")
	String? lockDiscount;
	@JSONField(name: "sell_in_loose")
	String? sellInLoose;
	@JSONField(name: "item_category")
	dynamic itemCategory;
	@JSONField(name: "item_category_id")
	int? itemCategoryId;
	@JSONField(name: "loyalty_points")
	int? loyaltyPoints;
	@JSONField(name: "loyalty_points_percentage")
	int? loyaltyPointsPercentage;
	@JSONField(name: "batch_discount")
	int? batchDiscount;
	@JSONField(name: "b2c_margin")
	dynamic b2cMargin;
	@JSONField(name: "loyalty_points_redeemed")
	int? loyaltyPointsRedeemed;
	@JSONField(name: "expiry_return")
	String? expiryReturn;
	@JSONField(name: "added_to_shortbook")
	String? addedToShortbook;
  
  SalesViewDataItems();

  factory SalesViewDataItems.fromJson(Map<String, dynamic> json) => $SalesViewDataItemsFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataItemsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewDataCustomerDetails {

	@JSONField(name: "patient_id")
	int? patientId;
	@JSONField(name: "patient_name")
	String? patientName;
	String? mobile;
	@JSONField(name: "patient_address")
	String? patientAddress;
	@JSONField(name: "patient_city")
	String? patientCity;
	@JSONField(name: "gstn_number")
	String? gstnNumber;
	@JSONField(name: "patient_zipcode")
	String? patientZipcode;
	@JSONField(name: "profile_picture")
	String? profilePicture;
	@JSONField(name: "discount_percentage")
	int? discountPercentage;
	String? email;
  
  SalesViewDataCustomerDetails();

  factory SalesViewDataCustomerDetails.fromJson(Map<String, dynamic> json) => $SalesViewDataCustomerDetailsFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataCustomerDetailsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewDataBillingForDetails {

	@JSONField(name: "patient_id")
	int? patientId;
	@JSONField(name: "patient_name")
	String? patientName;
	String? mobile;
	@JSONField(name: "patient_address")
	String? patientAddress;
	@JSONField(name: "patient_city")
	String? patientCity;
	@JSONField(name: "gstn_number")
	String? gstnNumber;
	@JSONField(name: "patient_zipcode")
	String? patientZipcode;
	@JSONField(name: "profile_picture")
	String? profilePicture;
	@JSONField(name: "discount_percentage")
	int? discountPercentage;
	String? email;
  
  SalesViewDataBillingForDetails();

  factory SalesViewDataBillingForDetails.fromJson(Map<String, dynamic> json) => $SalesViewDataBillingForDetailsFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataBillingForDetailsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewDataSettingResults {

	@JSONField(name: "display_phone_number")
	String? displayPhoneNumber;
	@JSONField(name: "loyalty_point")
	String? loyaltyPoint;
	@JSONField(name: "redeem_loyalty_point")
	String? redeemLoyaltyPoint;
	@JSONField(name: "redeem_loyalty_point_percentage")
	String? redeemLoyaltyPointPercentage;
	@JSONField(name: "annual_reconciliation_on")
	String? annualReconciliationOn;
	@JSONField(name: "cash_management")
	String? cashManagement;
	@JSONField(name: "restrict_item_high_po")
	String? restrictItemHighPo;
	@JSONField(name: "auto_min_max")
	String? autoMinMax;
	@JSONField(name: "allow_negative_purchase_return")
	String? allowNegativePurchaseReturn;
	@JSONField(name: "po_prefix")
	String? poPrefix;
	@JSONField(name: "sale_default_payment_mode")
	String? saleDefaultPaymentMode;
	@JSONField(name: "sales_sms")
	String? salesSms;
	@JSONField(name: "qrcode_label")
	String? qrcodeLabel;
	String? upi;
	@JSONField(name: "credit_card")
	String? creditCard;
	@JSONField(name: "margin_on_ptr")
	String? marginOnPtr;
	@JSONField(name: "show_location")
	String? showLocation;
	@JSONField(name: "show_manufacturer")
	String? showManufacturer;
	@JSONField(name: "doctor_name_in_drug_products")
	String? doctorNameInDrugProducts;
	@JSONField(name: "shortbook_item_alert")
	String? shortbookItemAlert;
	@JSONField(name: "wholesale_return_default_payment_mode")
	String? wholesaleReturnDefaultPaymentMode;
	@JSONField(name: "print_distributors_name")
	String? printDistributorsName;
	@JSONField(name: "gmail_accesstoken")
	String? gmailAccesstoken;
	@JSONField(name: "invoice_paper_size")
	String? invoicePaperSize;
	@JSONField(name: "show_gst_percentage")
	String? showGstPercentage;
	@JSONField(name: "greeting_message")
	String? greetingMessage;
	@JSONField(name: "auto_po_to_distributor")
	String? autoPoToDistributor;
	@JSONField(name: "total_no_item_to_reconcile")
	String? totalNoItemToReconcile;
	@JSONField(name: "show_doctor_address")
	String? showDoctorAddress;
	@JSONField(name: "eway_gsp_password")
	String? ewayGspPassword;
	@JSONField(name: "sales_extra_charges_label")
	String? salesExtraChargesLabel;
	@JSONField(name: "print_sales_draft")
	String? printSalesDraft;
	@JSONField(name: "lock_wholesale_return_bills")
	String? lockWholesaleReturnBills;
	@JSONField(name: "lock_sales_bills")
	String? lockSalesBills;
	@JSONField(name: "shortbook_whatsapp")
	String? shortbookWhatsapp;
	@JSONField(name: "dunzo_integration")
	String? dunzoIntegration;
	@JSONField(name: "show_schedule_type")
	String? showScheduleType;
	@JSONField(name: "sales_prefix")
	String? salesPrefix;
	@JSONField(name: "accept_delivery_order")
	String? acceptDeliveryOrder;
	@JSONField(name: "two_invoices")
	String? twoInvoices;
	@JSONField(name: "show_hsn_code")
	String? showHsnCode;
	@JSONField(name: "purchase_default_payment_mode")
	String? purchaseDefaultPaymentMode;
	@JSONField(name: "print_sale_rate_not_mrp")
	String? printSaleRateNotMrp;
	@JSONField(name: "edc_partner")
	String? edcPartner;
	@JSONField(name: "additional_security")
	String? additionalSecurity;
	@JSONField(name: "search_with_alias")
	String? searchWithAlias;
	@JSONField(name: "accept_in_stock_order")
	String? acceptInStockOrder;
	@JSONField(name: "allow_negative_sales")
	String? allowNegativeSales;
	@JSONField(name: "sms_sender_id")
	String? smsSenderId;
	@JSONField(name: "merge_po")
	String? mergePo;
	@JSONField(name: "customer_label")
	String? customerLabel;
	@JSONField(name: "accept_pickup_order")
	String? acceptPickupOrder;
	@JSONField(name: "feature_smart_banking")
	String? featureSmartBanking;
	@JSONField(name: "show_discounted_price")
	String? showDiscountedPrice;
	@JSONField(name: "update_stock_while_reconciling")
	String? updateStockWhileReconciling;
	@JSONField(name: "auto_po_to_ho")
	String? autoPoToHo;
	@JSONField(name: "lock_wholesale_bills")
	String? lockWholesaleBills;
	@JSONField(name: "debit_card")
	String? debitCard;
	@JSONField(name: "net_banking")
	String? netBanking;
	@JSONField(name: "edc_integration")
	String? edcIntegration;
	@JSONField(name: "purchase_return_default_payment_mode")
	String? purchaseReturnDefaultPaymentMode;
	@JSONField(name: "doctor_name_in_schedule_products")
	String? doctorNameInScheduleProducts;
	@JSONField(name: "generate_return_from_purchase_only")
	String? generateReturnFromPurchaseOnly;
	@JSONField(name: "po_number_in_gate_pass")
	String? poNumberInGatePass;
	@JSONField(name: "lock_wholesale_item")
	String? lockWholesaleItem;
	@JSONField(name: "vitrun_integration")
	String? vitrunIntegration;
	@JSONField(name: "set_customer_mobile_number_secure")
	String? setCustomerMobileNumberSecure;
	@JSONField(name: "show_sale_rate")
	String? showSaleRate;
	@JSONField(name: "search_inventory_only")
	String? searchInventoryOnly;
	@JSONField(name: "wholesale_whatsapp_msg")
	String? wholesaleWhatsappMsg;
	@JSONField(name: "sales_whatsapp")
	String? salesWhatsapp;
	@JSONField(name: "send_customized_sms_for_customer")
	String? sendCustomizedSmsForCustomer;
	@JSONField(name: "purchase_on")
	String? purchaseOn;
	@JSONField(name: "wholesale_prefix")
	String? wholesalePrefix;
	@JSONField(name: "attach_po_mandatory")
	String? attachPoMandatory;
	@JSONField(name: "shortbook_sms")
	String? shortbookSms;
	@JSONField(name: "feature_payment_gateway")
	String? featurePaymentGateway;
	@JSONField(name: "paytm_wallet")
	String? paytmWallet;
	@JSONField(name: "terms_and_conditions")
	String? termsAndConditions;
	@JSONField(name: "shipping_charges")
	String? shippingCharges;
	@JSONField(name: "eway_gsp_username")
	String? ewayGspUsername;
	@JSONField(name: "attach_gate_pass_mandatory")
	String? attachGatePassMandatory;
	@JSONField(name: "lock_item")
	String? lockItem;
	@JSONField(name: "minimum_order_value")
	String? minimumOrderValue;
	@JSONField(name: "margin_safety_net_b2c")
	String? marginSafetyNetB2c;
	@JSONField(name: "store_page_medicine_search")
	String? storePageMedicineSearch;
	@JSONField(name: "lock_purchase_bills")
	String? lockPurchaseBills;
	@JSONField(name: "print_pharmacy_name")
	String? printPharmacyName;
	@JSONField(name: "purchase_due_days")
	String? purchaseDueDays;
	@JSONField(name: "whatsapp_number")
	String? whatsappNumber;
	@JSONField(name: "selling_unit")
	String? sellingUnit;
	@JSONField(name: "generate_return_from_sales_only")
	String? generateReturnFromSalesOnly;
	@JSONField(name: "lock_sales_return_bills")
	String? lockSalesReturnBills;
	@JSONField(name: "remove_shortbook")
	String? removeShortbook;
	@JSONField(name: "invoice_title")
	String? invoiceTitle;
	@JSONField(name: "send_email_to_vendor")
	String? sendEmailToVendor;
	@JSONField(name: "lock_purchase_return_bills")
	String? lockPurchaseReturnBills;
	@JSONField(name: "wholesale_default_payment_mode")
	String? wholesaleDefaultPaymentMode;
	@JSONField(name: "purchase_extra_charges_label")
	String? purchaseExtraChargesLabel;
	@JSONField(name: "preprinted_bill")
	String? preprintedBill;
	@JSONField(name: "sales_return_default_payment_mode")
	String? salesReturnDefaultPaymentMode;
	@JSONField(name: "show_inventory_medicines")
	String? showInventoryMedicines;
	@JSONField(name: "inventory_reconciliation")
	String? inventoryReconciliation;
	@JSONField(name: "show_discount_percentage")
	String? showDiscountPercentage;
	@JSONField(name: "terms_and_conditions_wholesale")
	String? termsAndConditionsWholesale;
	@JSONField(name: "default_language")
	String? defaultLanguage;
	@JSONField(name: "margin_safety_net_b2b")
	String? marginSafetyNetB2b;
	@JSONField(name: "reminder_before")
	String? reminderBefore;
  
  SalesViewDataSettingResults();

  factory SalesViewDataSettingResults.fromJson(Map<String, dynamic> json) => $SalesViewDataSettingResultsFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataSettingResultsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewDataPaymentMethods {

	int? id;
	@JSONField(name: "method_name")
	String? methodName;
	@JSONField(name: "image_name")
	String? imageName;
	@JSONField(name: "payment_group")
	String? paymentGroup;
	@JSONField(name: "image_url")
	String? imageUrl;
  
  SalesViewDataPaymentMethods();

  factory SalesViewDataPaymentMethods.fromJson(Map<String, dynamic> json) => $SalesViewDataPaymentMethodsFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataPaymentMethodsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewDataAdjustmentPaymentMethods {

	int? id;
	@JSONField(name: "method_name")
	String? methodName;
	@JSONField(name: "image_name")
	String? imageName;
	@JSONField(name: "payment_group")
	String? paymentGroup;
	@JSONField(name: "image_url")
	String? imageUrl;
  
  SalesViewDataAdjustmentPaymentMethods();

  factory SalesViewDataAdjustmentPaymentMethods.fromJson(Map<String, dynamic> json) => $SalesViewDataAdjustmentPaymentMethodsFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataAdjustmentPaymentMethodsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewDataMedicineReminderDetails {


  
  SalesViewDataMedicineReminderDetails();

  factory SalesViewDataMedicineReminderDetails.fromJson(Map<String, dynamic> json) => $SalesViewDataMedicineReminderDetailsFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataMedicineReminderDetailsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewDataStaffList {

	int? id;
	String? fullname;
	String? status;
	String? entity;
	String? firstname;
	String? lastname;
	@JSONField(name: "role_id")
	int? roleId;
	@JSONField(name: "role_name")
	String? roleName;
  
  SalesViewDataStaffList();

  factory SalesViewDataStaffList.fromJson(Map<String, dynamic> json) => $SalesViewDataStaffListFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataStaffListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewDataFamilyMemberList {

	String? relation;
	String? fullname;
	String? mobile;
	@JSONField(name: "patient_family_member_id")
	int? patientFamilyMemberId;
	List<SalesViewDataFamilyMemberListAddresses>? addresses;
	String? firstname;
	String? lastname;
	@JSONField(name: "discount_percentage")
	int? discountPercentage;
  
  SalesViewDataFamilyMemberList();

  factory SalesViewDataFamilyMemberList.fromJson(Map<String, dynamic> json) => $SalesViewDataFamilyMemberListFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataFamilyMemberListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewDataFamilyMemberListAddresses {

	int? id;
	@JSONField(name: "user_id")
	int? userId;
	@JSONField(name: "address_name")
	String? addressName;
	String? address;
	@JSONField(name: "address_line2")
	String? addressLine2;
	String? city;
	String? state;
	String? country;
	String? zipcode;
	@JSONField(name: "is_default")
	String? isDefault;
	String? latitude;
	String? longitude;
  
  SalesViewDataFamilyMemberListAddresses();

  factory SalesViewDataFamilyMemberListAddresses.fromJson(Map<String, dynamic> json) => $SalesViewDataFamilyMemberListAddressesFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataFamilyMemberListAddressesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SalesViewDataLoyaltyPointAllocations {

	int? id;
	@JSONField(name: "medicine_category")
	String? medicineCategory;
	@JSONField(name: "item_category_id")
	int? itemCategoryId;
	int? points;
  
  SalesViewDataLoyaltyPointAllocations();

  factory SalesViewDataLoyaltyPointAllocations.fromJson(Map<String, dynamic> json) => $SalesViewDataLoyaltyPointAllocationsFromJson(json);

  Map<String, dynamic> toJson() => $SalesViewDataLoyaltyPointAllocationsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}