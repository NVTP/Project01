import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileCustomer extends StatefulWidget {
  @override
  _ProfileCustomerState createState() => _ProfileCustomerState();
}

class _ProfileCustomerState extends State<ProfileCustomer> {
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
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                      InkWell(
                        onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage('assets/prototype/virgil.jpg'),
                          ),
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60.0),
                          child: Text('Virgil van Dijk',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                        )
                    ],
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
                          Icons.history,
                        ),
                        title: Text(
                          'History',
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
