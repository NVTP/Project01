import 'package:flutter/material.dart';

class SportSelect extends StatefulWidget {
  @override
  _SportSelectState createState() => _SportSelectState();
}

class _SportSelectState extends State<SportSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Text('This Sport')
        ),
      ),
    );
  }
}
