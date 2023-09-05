import '../model/date_model.dart';

class AppStrings {
  //eVital-API Request URL
  static const String eVitalBaseUrl = "https://dev.evitalrx.in:3000/v3/";
  static const String eVitalV3SalesUrl = "${eVitalBaseUrl}sales/";
  static const String eVitalDashboardSearch = "${eVitalBaseUrl}dashboard/";
  static const String eVitalSearchUrl = "${eVitalBaseUrl}medicines/";
  static const String listEndingUrl = "list";
  static const String masterSearchUrl = "master_search";
  static const String searchProductUrl = "search";
  static const String salesViewUrl = "view";

  //Payload for sales/list Default body:

  static Map<String, dynamic> setSalesApiPayload({
    required int page,
    required String sort,
    required String orderBy,
    required String searchId,
    String? orderNumber,
    String? refNo,
    String? nameOrMobile,
    String? startDate,
    String? endDate,
    String? paymentId,
  }) {
    return {
      "accesstoken": "1afi3flss3wa2lts",
      "chemist_id": 503,
      "delivery_type": "",
      "device_id": "5755c7e0-abfe-4429-a50a-3b94302ee43a",
      "order": sort,
      "order_by_searchid": searchId,
      "order_number": orderNumber ?? "",
      "reference_number": refNo ?? "",
      "searchstring": nameOrMobile ?? "",
      "orderby": orderBy,
      "payment_status": paymentId ?? "",
      "page": page,
      "source": "",
      "end_date": endDate ?? "2024-03-31",
      "start_date": startDate ?? "2023-04-30",
    };
  }

  //Payload for dashboard/master_search default body

  static Map<String, dynamic> setDashboardApiPayload(
      {required String serialNo}) {
    return {
      "accesstoken": "1afi3flss3wa2lts",
      "chemist_id": 503,
      "device_id": "5755c7e0-abfe-4429-a50a-3b94302ee43a",
      "searchstring": serialNo,
      "search_source": "master_search",
      "category": "medicine"
    };
  }

  //Payload for searchPage default body
  static Map<String, dynamic> setSearchPayload({required String searchQuery}) {
    return {
      "medicine_name": searchQuery,
      "search_source": "sale",
      "search_with_alias": "no",
      "only_inventory_items": "no",
      "chemist_id": "645",
      "device_id": "961ec2892bf527dc",
      "accesstoken": "b8fbv0wja5hqghj7",
      "app_version": "",
      "os": "android"
    };
  }

  //Payload for sales/view default body
  static Map<String, dynamic> setSalesViewPayload({required String orderId}) {
    return {
      "order_id": orderId,
      "chemist_id": "503",
      "device_id": "8eb3d3be21f78af4",
      "accesstoken": "1afi3flss3wa2lts",
      "os": "android"
    };
  }

  static Map<String, dynamic> fakeRecordAtStaffZeroPosition = {
    "id": "0",
    "fullname": "All",
    "status": "active",
    "entity": "chemist"
  };
  static Map<String, dynamic> fakeRecordAtPaymentZeroPosition = {
    "method_name": "All",
    "id": "",
  };

  static String localImage =
      "https://m.media-amazon.com/images/I/71-oulFa4pL.jpg";

  static const String offlineAnimationUrl =
      "https://lottie.host/6f41760d-fd9a-44f5-99fd-2be1bd7ecfd2/sUsfKvE04R.json";

  static const String billDateText = "Bill Date";
}
