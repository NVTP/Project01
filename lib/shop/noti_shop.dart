import 'package:flutter/material.dart';

class NotificationShop extends StatefulWidget {
  @override
  _NotificationShopState createState() => _NotificationShopState();
}

class _NotificationShopState extends State<NotificationShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Text('Notification Shop',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50),),
    );
  }
}
