import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_conversion/currency_list.dart';
import 'package:unit_conversion/currencyservice.dart';
import 'package:unit_conversion/red_input.dart';
import 'package:unit_conversion/white_input.dart';

class DashBoardPage extends StatefulWidget {
  final currencyVal;
  final convertedCurrency;
  final currencyone;
  final currencytwo;
  final iswhite;

  const DashBoardPage(
      {this.currencyVal,
      this.convertedCurrency,
      this.currencyone,
      this.currencytwo,
      this.iswhite});

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFEC5759),
          ),
          Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height / 10),
                  Text(
                    CurrencyService().getCurrencyString(widget.currencyone),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontFamily: 'Quicksand'),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 10),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => InputRedPage(
                            origCurrency: widget.currencyone,
                            convCurrency: widget.currencytwo,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      widget.currencyVal.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60.0,
                          fontFamily: 'Quicksand'),
                    ),
                  ),
                  Text(
                    widget.currencyone,
                    style: TextStyle(
                        color: Color(0xFFFFB6B6),
                        fontSize: 17.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 12),
                  Container(
                    height: 125.0,
                    width: 125.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(62.5),
                      color: Colors.white,
                      border: Border.all(
                          color: Color(0xFFEC5759),
                          style: BorderStyle.solid,
                          width: 5.0),
                    ),
                    child: Center(
                      child: widget.iswhite
                          ? Icon(
                              Icons.arrow_upward,
                              size: 60.0,
                              color: Color(0xFFEC5759),
                            )
                          : Icon(
                              Icons.arrow_downward,
                              size: 60.0,
                              color: Color(0xFFEC5759),
                            ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 10),
                  Text(
                    widget.currencytwo,
                    style: TextStyle(
                        color: Color(0xFFFFB6B6),
                        fontSize: 17.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => InputWhitePage(
                            origCurrency: widget.currencyone,
                            convCurrency: widget.currencytwo,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      widget.convertedCurrency.toString(),
                      style: TextStyle(
                          color: Color(0xFFEC5759),
                          fontSize: 60.0,
                          fontFamily: 'Quicksand'),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 10),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => CurrencyList(),
                        ),
                      );
                    },
                    child: Text(
                      CurrencyService().getCurrencyString(widget.currencytwo),
                      style: TextStyle(
                          color: Color(0xFFEC5759),
                          fontSize: 22.0,
                          fontFamily: 'Quicksand'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
