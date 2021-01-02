import 'package:app_convertion_currency/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  //todas a varias q iremos usar para fazer a logica de conversão
  List<CurrencyModel> currencies;
  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;

  final TextEditingController toText;
  final TextEditingController fromText;

  //inicialinado as variaves no construtor
  HomeController({this.toText, this.fromText}) {
    currencies = CurrencyModel.getcurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency.nome == 'Real') {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.nome == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency.nome == 'Euro') {
      returnValue = value * toCurrency.euro;
    }

    fromText.text = (returnValue.toStringAsFixed(2));
  }
}
