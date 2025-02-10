import 'package:intl/intl.dart';

/// Formats a double value as a currency string.
///
/// @param value The value to be formatted.
/// @param symbol Whether to include the currency symbol in the formatted string. Defaults to true.
///
/// @return The formatted currency string.
class AppFormater {
  static String currencyFormat(double? value, {bool symbol = true}) {
    if (symbol) {
      return NumberFormat.simpleCurrency(locale: 'PT_BR').format(value);
    }
    return NumberFormat.simpleCurrency(locale: 'PT_BR').format(value).replaceAll('R\$', '');
  }
}
