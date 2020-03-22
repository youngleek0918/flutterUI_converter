import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_conversion/dashboard.dart';

class CurrencyList extends StatefulWidget {
  @override
  _CurrencyListState createState() => _CurrencyListState();
}

class _CurrencyListState extends State<CurrencyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFEC5759)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          getListItem('United States Dollar', 'USD'),
          getListItem('Japanese Yen', 'JPY'),
          getListItem('Chinese Yuan', 'CNY'),
          getListItem('Euro', 'EUR'),
        ],
      ),
    );
  }

  Widget getListItem(String currencyName, String currency) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(
          CupertinoPageRoute(
            builder: (context) => DashBoardPage(
                currencyVal: 0.0,
                iswhite: false,
                convertedCurrency: 0.0,
                currencyone: 'KRW',
                currencytwo: currency),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(left: 25.0, bottom: 20.0),
        child: Text(
          currencyName,
          style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEC5759)),
        ),
      ),
    );
  }
}
