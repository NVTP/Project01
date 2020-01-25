import 'package:flutter/material.dart';

class CartShop extends StatefulWidget {
  @override
  _CartShopState createState() => _CartShopState();
}

class _CartShopState extends State<CartShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Text('Cart Shop',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
    );
  }
}
