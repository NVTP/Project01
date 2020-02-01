import 'package:flutter/material.dart';

class ElectronicSelect extends StatefulWidget {
  @override
  _ElectronicSelectState createState() => _ElectronicSelectState();
}

class _ElectronicSelectState extends State<ElectronicSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Text('This Electronic')
        ),
      ),
    );
  }
}
