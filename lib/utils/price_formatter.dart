import 'package:intl/intl.dart';

class PriceFormatter {
  static String formatter(int price) {
    final formatter = NumberFormat('#,###');

    return formatter.format(price);
  }
}
