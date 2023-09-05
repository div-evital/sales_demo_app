import '../model/filter_model.dart';

class Sorting {
  static List<SortingModel> sortingList = [
    SortingModel(
        name: "Entry Date New to Old", sort: "desc", orderBy: "created_date"),
    SortingModel(
        name: "Entry Date Old to New", sort: "asc", orderBy: "created_date"),
    SortingModel(
        name: "Order No. - A to Z", sort: "asc", orderBy: "order_number"),
    SortingModel(
        name: "Order No. - Z to A", sort: "desc", orderBy: "order_number"),
    SortingModel(
        name: "Bill Date New to Old",
        sort: "desc",
        orderBy: "order_delivery_datetime"),
    SortingModel(
        name: "Bill Date Old to New",
        sort: "asc",
        orderBy: "order_delivery_datetime"),
    SortingModel(name: "Amount - 1  to 9", sort: "asc", orderBy: "total"),
    SortingModel(name: "Amount - 9 to 1", sort: "desc", orderBy: "total"),
  ];
}
