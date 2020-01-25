import 'package:flutter/material.dart';

class CartCustomer extends StatefulWidget {
  @override
  _CartCustomerState createState() => _CartCustomerState();
}

class _CartCustomerState extends State<CartCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: (){},
                  child: Card(
                    elevation: 5.8,
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/prototype/timbuk.jpg',height: 150,fit: BoxFit.cover,alignment: Alignment.topCenter,),
                          Text('Timbuk 2',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Quantity : ',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                Text('99',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                              ]
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Shop : ',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                Text('100',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                              ]
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Card(
                    elevation: 5.8,
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/prototype/stan.jpg',height: 150,fit: BoxFit.cover,alignment: Alignment.topCenter,),
                          Text('Timbuk 2',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Quantity : ',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                Text('120',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                              ]
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Shop : ',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                Text('150',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                              ]
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
