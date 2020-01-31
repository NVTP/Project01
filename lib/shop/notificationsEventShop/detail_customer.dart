import 'package:flutter/material.dart';

class DetailCustomer extends StatefulWidget {
  @override
  _DetailCustomerState createState() => _DetailCustomerState();
}

class _DetailCustomerState extends State<DetailCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Detail Customer'),
            centerTitle: true,
            floating: true,
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
            ),
            delegate: SliverChildListDelegate([
              Container(
                color: Colors.black,
                height: 250,
                width: 250,
              ),
              Container(
                width: 250,
                height: 250,
                color: Colors.amber,
              ),
            ])
          ),
        ],
      ),
    );
  }
}
