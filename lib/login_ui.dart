import 'package:assem_deal/customer/controlPageCustomer/main_customer.dart';
import 'package:assem_deal/customer/register_customer.dart';
import 'package:assem_deal/shop/main_shop.dart';
import 'package:assem_deal/shop/register_shop.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginUI extends StatefulWidget {
  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  bool showPW = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
       fit: StackFit.expand,
       children: <Widget>[
         Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.blueGrey[100],
                    Colors.blueGrey[300],
                    Colors.blueGrey,
                    Colors.blueGrey[700],
                  ]
             ),
           ),
         ),
         SafeArea(
           child: Container(
             alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
               child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Form(
                       key: _formKey,
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                           width: MediaQuery.of(context).size.width,
                           child: Card(
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(20.0),
                             ),
                             elevation: 13.0,
                             child: Padding(
                               padding: const EdgeInsets.only(top: 20.0),
                               child: Column(
                                 children: <Widget>[
                                   Text('Login',style: TextStyle(color: Colors.blueGrey[800], fontSize: 30.0, fontWeight: FontWeight.bold),),
                                   SizedBox(
                                     height: 10.0,
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 10),
                                     child: TextFormField(
                                       maxLines: 1,
                                       controller: _username,
                                       validator: (value){
                                         if(value.isEmpty){
                                           return 'username not empty';
                                         }else if(value.length <= 5 ){
                                            return 'username less than 5 charecters';
                                         }else{
                                           return null;
                                         }
                                       },
                                       decoration: InputDecoration(
                                         prefixIcon: Icon(
                                           Icons.person,
                                           color: Colors.blueGrey[200],
                                         ),
                                         hintText: 'Username',hintStyle: TextStyle(color: Colors.blueGrey[200]),
                                         labelText: 'Username',labelStyle: TextStyle(color: Colors.blueGrey[200]),
                                         border: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(20),
                                         ),
                                       ),
                                     ),
                                   ),//Username
                                   SizedBox(
                                     height: 10.0,
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 10),
                                     child: TextFormField(
                                       maxLines: 1,
                                       controller: _password,
                                       obscureText: showPW,
                                       keyboardType: TextInputType.visiblePassword,
                                       validator: (value){
                                         if(value.isEmpty){
                                           return 'password not empty';
                                         }else if(value.length <= 5 ){
                                           return 'password less than 5 charecters';
                                         }else{
                                           return null;
                                         }
                                       },
                                       decoration: InputDecoration(
                                         prefixIcon: Icon(
                                           Icons.lock,
                                           color: Colors.blueGrey[200],
                                         ),
                                         hintText: 'Password',hintStyle: TextStyle(color: Colors.blueGrey[200]),
                                         labelText: 'Password',labelStyle: TextStyle(color: Colors.blueGrey[200]),
                                         suffixIcon: IconButton(
                                           onPressed: (){
                                             setState(() {
                                               if(showPW == true){
                                                 showPW = false;
                                               }else{
                                                 showPW = true;
                                               }
                                             });
                                           },
                                           icon: Icon(
                                               showPW ? Icons.visibility_off : Icons.visibility,
                                           ),
                                         ),
                                         border: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(20),
                                         ),
                                       ),
                                     ),
                                   ),//Password
                                   SizedBox(
                                     height: 20.0,
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                      child: Container(
                                       width: MediaQuery.of(context).size.width,
                                       child: RaisedButton(
                                         onPressed: (){
                                             if(_formKey.currentState.validate()){
                                               if(_username.text.trim() == 'customer' && _password.text.trim() == '123456'){
                                                 Navigator.push(context,
                                                   MaterialPageRoute(builder: (context)=> MainCustomer()),
                                                 );
                                               }else if(_username.text.trim() == 'username' && _password.text.trim() == '123456'){
                                                 Navigator.push(context,
                                                   MaterialPageRoute(builder: (context)=> MainShop()),
                                                 );
                                               }
                                             }
                                         },
                                         elevation: 1.0,
                                         color: Colors.blueGrey[200],
                                         shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(20),
                                         ),
                                         child: Text('Sign In',
                                           style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                       ),
                                     ),
                                   ),
                                   SizedBox(
                                     height: 20.0,
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 20.0,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Divider(
                           height: 3.0,
                           color: Colors.white,
                         ),
                         Text('OR',style: TextStyle(color: Colors.white, fontSize: 30.0),),
                         Divider(
                           height: 3.0,
                           color: Colors.white,
                         ),
                       ],
                     ),
                     SizedBox(
                       height: 10.0,
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: Divider(
                         height: 3.0,
                         color: Colors.white,
                       ),
                     ),
                     SizedBox(
                       height: 20.0,
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           RawMaterialButton(
                             onPressed: (){},
                             fillColor: Color(0xFF3B5998),
                             shape: CircleBorder(),
                             elevation: 3.0,
                             child: Icon(
                               FontAwesomeIcons.facebookF,
                               color: Colors.white,
                               size: 20.0,
                             ),
                           ),
                           RawMaterialButton(
                             onPressed: (){},
                             fillColor: Color(0xFFEA4335),
                             shape: CircleBorder(),
                             elevation: 0.1,
                             child: Icon(
                               FontAwesomeIcons.google,
                               color: Colors.white,
                               size: 20.0,
                             ),
                           ),
                           RaisedButton(
                             onPressed: (){
                               // print('OK');
                               Navigator.push(context,
                                MaterialPageRoute(builder: (context) => RegisterCustomer())
                               );
                             },
                             elevation: 1.0,
                             color: Colors.white,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(20),
                             ),
                             child: Text('Register Now', style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                           ),
                         ],
                       ),
                     ),//BUTTON
                     SizedBox(
                       height: 20.0,
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: Divider(
                         height: 3.0,
                         color: Colors.white,
                       ),
                     ),
                     SizedBox(
                       height: 20.0,
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: Container(
                         height: 40.0,
                         child: RaisedButton(
                           color: Colors.white,
                           onPressed: (){
                             //TODO
                             //print('OK');
                             Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> RegisterShop())
                             );
                           },
                           elevation: 10,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20.0),
                           ),
                           child: Text('Register for Shop', style: TextStyle(fontSize: 20.0, color: Colors.blueGrey),),
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 100.0,
                     ),
                   ],
                 ),
             ),
           ),
         ),
       ],
     ),
    );
  }
}