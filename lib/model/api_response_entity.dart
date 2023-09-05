import 'package:evital_sales/generated/json/base/json_field.dart';
import 'package:evital_sales/generated/json/api_response_entity.g.dart';
import 'dart:convert';
export 'package:evital_sales/generated/json/api_response_entity.g.dart';

@JsonSerializable()
class ApiResponseEntity {
	@JSONField(name: "status_code")
	String? statusCode;
	@JSONField(name: "status_message")
	String? statusMessage;
	String? datetime;
	@JSONField(name: "ng_version")
	String? ngVersion;
	ApiResponseData? data;

	ApiResponseEntity();

	factory ApiResponseEntity.fromJson(Map<String, dynamic> json) => $ApiResponseEntityFromJson(json);

	Map<String, dynamic> toJson() => $ApiResponseEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ApiResponseData {
	@JSONField(name: "current_page")
	int? currentPage;
	int? rpp;
	List<ApiResponseDataResults>? results;
	@JSONField(name: "staff_list")
	List<ApiResponseDataStaffList>? staffList;
	@JSONField(name: "payment_methods")
	List<ApiResponseDataPaymentMethods>? paymentMethods;
	@JSONField(name: "adjustment_payment_methods")
	List<ApiResponseDataAdjustmentPaymentMethods>? adjustmentPaymentMethods;

	ApiResponseData();

	factory ApiResponseData.fromJson(Map<String, dynamic> json) => $ApiResponseDataFromJson(json);

	Map<String, dynamic> toJson() => $ApiResponseDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ApiResponseDataResults {
	int? id;
	@JSONField(name: "bill_date")
	String? billDate;
	@JSONField(name: "order_number")
	String? orderNumber;
	int? amount;
	int? total;
	@JSONField(name: "paid_amount")
	int? paidAmount;
	@JSONField(name: "due_amount")
	int? dueAmount;
	@JSONField(name: "payment_status")
	int? paymentStatus;
	@JSONField(name: "user_id")
	int? userId;
	@JSONField(name: "order_delivery_datetime")
	String? orderDeliveryDatetime;
	@JSONField(name: "created_date")
	String? createdDate;
	@JSONField(name: "payment_date")
	String? paymentDate;
	@JSONField(name: "user_patient_id")
	int? userPatientId;
	@JSONField(name: "patient_name")
	String? patientName;
	String? mobile;
	@JSONField(name: "bill_no")
	String? billNo;
	@JSONField(name: "order_status")
	String? orderStatus;
	@JSONField(name: "delivery_type")
	String? deliveryType;
	@JSONField(name: "order_mode")
	String? orderMode;
	@JSONField(name: "payment_mode")
	String? paymentMode;
	@JSONField(name: "payment_ref_id")
	String? paymentRefId;
	@JSONField(name: "ref_transaction_id")
	int? refTransactionId;
	@JSONField(name: "reference_number")
	int? referenceNumber;
	@JSONField(name: "patient_id")
	int? patientId;
	@JSONField(name: "order_by_id")
	int? orderById;
	@JSONField(name: "order_by_entity")
	String? orderByEntity;
	@JSONField(name: "order_by_name")
	String? orderByName;
	String? remark;
	@JSONField(name: "attach_prescription")
	String? attachPrescription;
	@JSONField(name: "redeemed_loyalty_points")
	int? redeemedLoyaltyPoints;
	@JSONField(name: "source")
	String? xSource;
	@JSONField(name: "lock_bill")
	String? lockBill;
	@JSONField(name: "invoive_qrcode_url")
	String? invoiveQrcodeUrl;
	@JSONField(name: "print_url")
	String? printUrl;
	@JSONField(name: "share_message")
	String? shareMessage;
	@JSONField(name: "reference_order_results")
	List<ApiResponseDataResultsReferenceOrderResults>? referenceOrderResults;
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

	ApiResponseDataResults();

	factory ApiResponseDataResults.fromJson(Map<String, dynamic> json) => $ApiResponseDataResultsFromJson(json);

	Map<String, dynamic> toJson() => $ApiResponseDataResultsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ApiResponseDataResultsReferenceOrderResults {
	@JSONField(name: "reference_order_id")
	int? referenceOrderId;
	int? id;
	@JSONField(name: "order_number")
	String? orderNumber;

	ApiResponseDataResultsReferenceOrderResults();

	factory ApiResponseDataResultsReferenceOrderResults.fromJson(Map<String, dynamic> json) => $ApiResponseDataResultsReferenceOrderResultsFromJson(json);

	Map<String, dynamic> toJson() => $ApiResponseDataResultsReferenceOrderResultsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ApiResponseDataStaffList {
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

	ApiResponseDataStaffList();

	factory ApiResponseDataStaffList.fromJson(Map<String, dynamic> json) => $ApiResponseDataStaffListFromJson(json);

	Map<String, dynamic> toJson() => $ApiResponseDataStaffListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ApiResponseDataPaymentMethods {
	int? id;
	@JSONField(name: "method_name")
	String? methodName;
	@JSONField(name: "image_name")
	String? imageName;
	@JSONField(name: "payment_group")
	String? paymentGroup;
	@JSONField(name: "image_url")
	String? imageUrl;

	ApiResponseDataPaymentMethods();

	factory ApiResponseDataPaymentMethods.fromJson(Map<String, dynamic> json) => $ApiResponseDataPaymentMethodsFromJson(json);

	Map<String, dynamic> toJson() => $ApiResponseDataPaymentMethodsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ApiResponseDataAdjustmentPaymentMethods {
	int? id;
	@JSONField(name: "method_name")
	String? methodName;
	@JSONField(name: "image_name")
	String? imageName;
	@JSONField(name: "payment_group")
	String? paymentGroup;
	@JSONField(name: "image_url")
	String? imageUrl;

	ApiResponseDataAdjustmentPaymentMethods();

	factory ApiResponseDataAdjustmentPaymentMethods.fromJson(Map<String, dynamic> json) => $ApiResponseDataAdjustmentPaymentMethodsFromJson(json);

	Map<String, dynamic> toJson() => $ApiResponseDataAdjustmentPaymentMethodsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}