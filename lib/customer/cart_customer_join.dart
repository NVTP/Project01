import 'package:assem_deal/customer/controlPageCustomer/main_event.dart';
import 'package:flutter/material.dart';

class CartCusJoin extends StatefulWidget {
  @override
  _CartCusJoinState createState() => _CartCusJoinState();
}

class _CartCusJoinState extends State<CartCusJoin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>MainEvent())
                );
              },
              child: Card(
                elevation: 5.8,
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/prototype/sony.jpg',height: 150,fit: BoxFit.cover,alignment: Alignment.topCenter,),
                      Text('Sony wf-1000xm3',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
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
    );
  }
}
