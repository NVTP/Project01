import 'package:assem_deal/customer/choice/update_profile_customer.dart';
import 'package:assem_deal/customer/choice/upload_image_profile.dart';
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
                          Icons.person,
                        ),
                        title: Text(
                          'Profile',
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
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>UpdateProfile())
                          );
                        },
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
