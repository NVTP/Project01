import 'package:flutter/material.dart';

class GadgetSelect extends StatefulWidget {
  @override
  _GadgetSelectState createState() => _GadgetSelectState();
}

class _GadgetSelectState extends State<GadgetSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Text('This Gadget')
        ),
      ),
    );
  }
}
