import 'package:flutter/material.dart';
import 'package:unit_conversion/dashboard.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashBoardPage(
        currencyVal: 0.0,
        convertedCurrency: 0.0,
        currencyone: 'KRW',
        currencytwo: 'USD',
        iswhite: false,
      ),
    );
  }
}
