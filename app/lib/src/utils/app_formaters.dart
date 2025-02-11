import 'package:intl/intl.dart';

/// Formats a double value as a currency string.
///
/// @param value The value to be formatted.
/// @param symbol Whether to include the currency symbol in the formatted string. Defaults to true.
///
/// @return The formatted currency string.
class AppFormater {
  static String currencyFormat(double? value, {bool symbol = true}) {
    String result;
    if (value == null) return '';
    if (symbol) {
      result = NumberFormat.simpleCurrency(locale: 'PT_BR').format(value).trim();
    } else {
      result = NumberFormat.simpleCurrency(locale: 'PT_BR').format(value).replaceAll('R\$', '').trim();
    }
    result = result.replaceAll('\u00A0', ' ');
    return result;
  }
}
