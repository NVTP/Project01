import 'package:assem_deal/customer/checkouts.dart';
import 'package:assem_deal/customer/controlPageCustomer/main_customer.dart';
import 'package:assem_deal/login_ui.dart';
import 'package:assem_deal/shop/main_shop.dart';
import 'package:flutter/material.dart';

main() => runApp(
  MaterialApp(
    home: LoginUI(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blueGrey,
    ),
  )
);