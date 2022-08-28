


import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uitask/view/controller/controll_screen.dart';
import 'package:uitask/view/more_pages/change_password.dart';
import 'package:uitask/view/more_pages/contact_us.dart';
import 'package:uitask/view/more_pages/currency_converter.dart';
import 'package:uitask/view/more_pages/freq_asked_ques.dart';
import 'package:uitask/view/more_pages/more.dart';
import 'package:uitask/view/more_pages/profile.dart';
import 'package:uitask/view/transaction_pages/exchange_details.dart';
import 'package:uitask/view/transaction_pages/transaction_history.dart';


class Routes {


  static Map<String, Function> rules = {

    "/": (context, params) {
      return ControllScreen();
    },
    "/trans/history": (context, params) {
      return TransactionHistory();
    },
    "/exchange/details": (context, params) {
      return ExchangeDetails();
    },
    "/change/password": (context, params) {
      return ChangePassword();
    },
    "/profile": (context, params) {
      return Profile();
    },
    "/more": (context, params) {
      return MoreScreen();
    },
    "/freq/ques": (context, params) {
      return FreqAskedQuestion();
    },
    "/contact/us": (context, params) {
      return ContactUs();
    },
    "/currency/converter": (context, params) {
      return CurrencyConverter();
    },





  };

  static Route<dynamic>? getRoutes(RouteSettings settings) {
    final String? key = settings.name;
    final dynamic params = settings.arguments;
    final fn = rules[key];


    print("route: $key , ${jsonEncode(params)}");


    if (fn == null) {
      print("route not founded =============");
      return null;
    }

    return MaterialPageRoute(
      builder: (context) {
        return fn(context, params);
      },
    );
  }
}
