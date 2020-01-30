import 'package:flutter/material.dart';

class ShopEventShop extends StatefulWidget {
  @override
  _ShopEventShopState createState() => _ShopEventShopState();
}

class _ShopEventShopState extends State<ShopEventShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              ListTile(
                onTap: (){},
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    'assets/images/xiaomi.png',
                  ),
                ),
                title: Text('Shop Sony Thailand'),
                subtitle: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Price : 1500.00'),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Quantity : 120'),
                  ],
                ),
              ),
              Divider(
                height: 5.0,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
