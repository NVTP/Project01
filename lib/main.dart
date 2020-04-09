import 'package:assem_deal/customer/checkouts.dart';
import 'package:assem_deal/customer/controlPageCustomer/main_customer.dart';
import 'package:assem_deal/login_ui.dart';
import 'package:assem_deal/services/notifier/event_notifier.dart';
import 'package:assem_deal/services/notifier/user_create.dart';
import 'package:assem_deal/shop/controlPageShop/main_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() => runApp(
      MultiProvider(
        child: MyApp(),
        providers: [
          ChangeNotifierProvider(
            create: (_)=>EventNotifier(),
          ),
          ChangeNotifierProvider(
            create: (_)=>UserCreateNotifier(),
          ),
        ],
      )
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginUI(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueGrey,
      ),
    );
  }
}
