import 'package:flutter/material.dart';

class ShoesSelect extends StatefulWidget {
  @override
  _ShoesSelectState createState() => _ShoesSelectState();
}

class _ShoesSelectState extends State<ShoesSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Text('This Shoes')
        ),
      ),
    );
  }
}
