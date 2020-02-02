import 'package:flutter/material.dart';

class CreamSelect extends StatefulWidget {
  @override
  _CreamSelectState createState() => _CreamSelectState();
}

class _CreamSelectState extends State<CreamSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Text('This Cream'),
        ),
      ),
    );
  }
}
