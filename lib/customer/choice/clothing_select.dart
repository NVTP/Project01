import 'package:flutter/material.dart';

class ClothingSelect extends StatefulWidget {
  @override
  _ClothingSelectState createState() => _ClothingSelectState();
}

class _ClothingSelectState extends State<ClothingSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Text('This Clothing')
        ),
      ),
    );
  }
}
