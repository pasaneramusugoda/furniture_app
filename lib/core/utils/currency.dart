import 'package:intl/intl.dart';

class Currency {
  String _symbol;
  NumberFormat _currencyFormat;

  static final Currency _singleton = Currency.internal();

  factory Currency({
    String symbol = 'Rs.',
    int decimalDigits = 0,
  }) {
    _singleton._symbol = symbol;
    _singleton._currencyFormat = new NumberFormat.currency(
      locale: Intl.defaultLocale,
      symbol: symbol,
      decimalDigits: decimalDigits,
    );
    return _singleton;
  }

  Currency.internal();

  String format(num number) {
    return _currencyFormat.format(number);
  }

  num parse(String value) {
    return _currencyFormat.parse(value);
  }
}
