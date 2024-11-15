import 'package:intl/intl.dart';

class HFormatter {
  static String formatDate({DateTime? date}) {
    date ??= DateTime.now();
    return DateFormat('dddd-mm-yyyy').format(date);
  }

  static String formatCurrency({required double amount}) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String foramtPhoneNumber({required String phoneNumber}) {
    return phoneNumber;
  }

  
}
