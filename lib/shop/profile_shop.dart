import 'package:flutter/material.dart';

class ProfileShop extends StatefulWidget {
  @override
  _ProfileShopState createState() => _ProfileShopState();
}

class _ProfileShopState extends State<ProfileShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Text('Profile Shop',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50),),
    );
  }
}
