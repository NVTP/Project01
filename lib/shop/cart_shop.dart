import 'package:assem_deal/shop/controlPageShop/main_event_shop.dart';
import 'package:flutter/material.dart';

class CartShop extends StatefulWidget {
  @override
  _CartShopState createState() => _CartShopState();
}

class _CartShopState extends State<CartShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offer',style: TextStyle(color: Colors.white,fontSize: 20),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>MainEventShop())
                  );
                },
                child: Card(
                  elevation: 1.1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 5.0,
                        ),
                        Image.asset(
                          'assets/prototype/sony.jpg',
                          fit: BoxFit.cover,
                          height: 150,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('Product : Sony WF-1000xm3'),
                        Text('Quantity : 95'),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Card(
                  elevation: 1.1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 5.0,
                        ),
                        Image.asset(
                          'assets/prototype/stan.jpg',
                          fit: BoxFit.cover,
                          height: 150,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('Product : Adidas Stan Smith'),
                        Text('Quantity : 101'),
                        SizedBox(
                          height: 5.0,
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
