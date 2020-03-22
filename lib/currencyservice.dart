import 'package:flutter/material.dart';
import 'package:unit_conversion/dashboard.dart';

class CurrencyService {
  getCurrencyString(currency){
    if (currency == 'KRW') return 'South Korean Won';
    if (currency == 'USD') return 'United States Dollor';
    if (currency == 'JPY') return 'Japanese Yen';
    if (currency == 'CNY') return 'Chinese Yuan';
    if (currency == 'EUR') return 'Euro';

  }

  convertCurrency(String fromCurrency, String toCurrency, int amount, context) {
    if (fromCurrency == 'KRW') {
      switch (toCurrency) {
        case 'USD':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashBoardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 0.00080).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  iswhite: false)));
          break;
        case 'JPY':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashBoardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 0.089).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  iswhite: false)));
          break;
        case 'CNY':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashBoardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 0.0057).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  iswhite: false)));
          break;
        case 'EUR':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashBoardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 0.00074).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  iswhite: false)));
          break;
      }
    }
    if (fromCurrency == 'USD') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashBoardPage(
                currencyVal: (amount * 1254.95).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyone: toCurrency,
                currencytwo: fromCurrency,
                iswhite: true,
              )));
    }

    if (fromCurrency == 'JPY') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashBoardPage(
                currencyVal: (amount * 11.31).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyone: toCurrency,
                currencytwo: fromCurrency,
                iswhite: true,
              )));
    }

    if (fromCurrency == 'CNY') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashBoardPage(
                currencyVal: (amount * 176.86).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyone: toCurrency,
                currencytwo: fromCurrency,
                iswhite: true,
              )));
    }
    if (fromCurrency == 'EUR') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashBoardPage(
                currencyVal: (amount * 1350.77).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyone: toCurrency,
                currencytwo: fromCurrency,
                iswhite: true,
              )));
    }
  }
}

