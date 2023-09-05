import 'package:evital_sales/utils/custom_date_generator.dart';

class DateModel {
  String displayText;
  String startDate;
  String endDate;
  static final String _curDay =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day)
          .toString();
  static final String _yestDay = DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day - 1)
      .toString();
  static final String _last7Days = DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day - 6)
      .toString();
  static final String _last30Days = DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day - 30)
      .toString();
  static final String _last90Days = DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day - 90)
      .toString();
  static final String _curFiscalStartYear =
      DateTime.parse("${DateTime.now().year}-0${DateTime.april}-01").toString();
  static final String _curFiscalEndYear =
      DateTime.parse("${DateTime.now().year + 1}-0${DateTime.march}-31")
          .toString();
  static final String _prevFiscalStartYear =
      DateTime.parse("${DateTime.now().year - 1}-0${DateTime.april}-01")
          .toString();
  static final String _prevFiscalEndYear =
      DateTime.parse("${DateTime.now().year}-0${DateTime.march}-31").toString();

  DateModel({
    required this.displayText,
    required this.startDate,
    required this.endDate,
  });

  static List<DateModel> getDateModelList = [
    DateModel(
        displayText: "Today",
        startDate: CustomDateGenerate.convertDateIntoName(
            date: _curDay, formatPattern: "yyyy-MM-dd"),
        endDate: CustomDateGenerate.convertDateIntoName(
            date: _curDay, formatPattern: "yyyy-MM-dd")),
    DateModel(
        displayText: "Yesterday",
        startDate: CustomDateGenerate.convertDateIntoName(
            date: _yestDay, formatPattern: "yyyy-MM-dd"),
        endDate: CustomDateGenerate.convertDateIntoName(
            date: _yestDay, formatPattern: "yyyy-MM-dd")),
    DateModel(
        displayText: "Last 7 Days",
        startDate: CustomDateGenerate.convertDateIntoName(
            date: _last7Days, formatPattern: "yyyy-MM-dd"),
        endDate: CustomDateGenerate.convertDateIntoName(
            date: _curDay, formatPattern: "yyyy-MM-dd")),
    DateModel(
        displayText: "Last 30 Days",
        startDate: CustomDateGenerate.convertDateIntoName(
            date: _last30Days, formatPattern: "yyyy-MM-dd"),
        endDate: CustomDateGenerate.convertDateIntoName(
            date: _curDay, formatPattern: "yyyy-MM-dd")),
    DateModel(
        displayText: "Last 90 Days",
        startDate: CustomDateGenerate.convertDateIntoName(
            date: _last90Days, formatPattern: "yyyy-MM-dd"),
        endDate: CustomDateGenerate.convertDateIntoName(
            date: _curDay, formatPattern: "yyyy-MM-dd")),
    DateModel(
        displayText: "Current Fiscal Year",
        startDate: CustomDateGenerate.convertDateIntoName(
            date: _curFiscalStartYear, formatPattern: "yyyy-MM-dd"),
        endDate: CustomDateGenerate.convertDateIntoName(
            date: _curFiscalEndYear, formatPattern: "yyyy-MM-dd")),
    DateModel(
        displayText: "Previous Fiscal Year",
        startDate: CustomDateGenerate.convertDateIntoName(
            date: _prevFiscalStartYear, formatPattern: "yyyy-MM-dd"),
        endDate: CustomDateGenerate.convertDateIntoName(
            date: _prevFiscalEndYear, formatPattern: "yyyy-MM-dd")),
    DateModel(
        displayText: "Custom Range",
        startDate: CustomDateGenerate.convertDateIntoName(
            date: _curFiscalStartYear, formatPattern: "yyyy-MM-dd"),
        endDate: CustomDateGenerate.convertDateIntoName(
            date: _curFiscalEndYear, formatPattern: "yyyy-MM-dd")),
  ];
}
