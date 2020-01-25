import 'package:flutter/material.dart';

class HomeShop extends StatefulWidget {
  @override
  _HomeShopState createState() => _HomeShopState();
}

class _HomeShopState extends State<HomeShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Text('Home Shop',style: TextStyle(color: Colors.white,fontSize: 50.0,fontWeight: FontWeight.bold),),
    );
  }
}
