import 'package:intl/intl.dart';

class CustomDateGenerate {
  static String convertDateIntoName(
      {required String date, String? formatPattern}) {
    DateTime dateTime = DateTime.parse(date);
    String dateFormat =
        DateFormat(formatPattern ?? "dd MMM yyyy").format(dateTime);
    return dateFormat;
  }
}
