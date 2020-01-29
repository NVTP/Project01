import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileShop extends StatefulWidget {
  @override
  _ProfileShopState createState() => _ProfileShopState();
}

class _ProfileShopState extends State<ProfileShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  color: Colors.blueGrey[600],
                ),
                InkWell(
                  onTap: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: ExactAssetImage(
                            'assets/images/sony.jpeg',
                          ),
                          maxRadius: 60,
                        ),
                      ),
                      Text('Sony Thailand',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    onTap: (){},
                    leading: Icon(
                      Icons.settings,
                    ),
                    title: Text(
                      'Setting',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    trailing: Icon(
                        Icons.arrow_forward_ios
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Icon(
                      Icons.help,
                    ),
                    title: Text(
                      'Help & Report',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    trailing: Icon(
                        Icons.arrow_forward_ios
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    onTap: (){
                      SystemNavigator.pop();
                    },
                    leading: Icon(
                      Icons.power_settings_new,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
