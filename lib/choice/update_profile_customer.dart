import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UpdateProfile extends StatefulWidget {
  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _cusFName;
  TextEditingController _cusLName;
  TextEditingController _cusPassword;
  TextEditingController _cusEmail;
  TextEditingController _cusPhone;

  @override
  void initState() {
    // TODO: implement initState
    _cusFName = TextEditingController();
    _cusLName = TextEditingController();
    _cusPassword = TextEditingController();
    _cusEmail = TextEditingController();
    _cusPhone = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Update Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: _cusFName,
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        validator: (data){
                          if(data.isEmpty){
                            return 'Plese check First Name';
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          labelText: 'First Name',
                          labelStyle: TextStyle(color: Colors.blueGrey[300]),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),//FIRST NAME
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        controller: _cusLName,
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        validator: (data){
                          if(data.isEmpty){
                            return 'Plese check Last Name';
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Last Name',
                            labelStyle: TextStyle(color: Colors.blueGrey[300]),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),//LAST NAME
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        controller: _cusPassword,
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        validator: (data){
                          if(data.isEmpty){
                            return 'Plese check Password';
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.blueGrey[300]),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),//PASSWORD
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        controller: _cusEmail,
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        validator: (data){
                          if(data.isEmpty){
                            return 'Plese check Email';
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.blueGrey[300]),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),//Email
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        controller: _cusPhone,
                        maxLines: 1,
                        keyboardType: TextInputType.number,
                        inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                        validator: (data){
                          if(data.isEmpty){
                            return 'Plese check Phone Number';
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(color: Colors.blueGrey[300]),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),//PHONE
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        child: RaisedButton(
                          onPressed: (){},
                          child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 20),),
                          color: Colors.blueGrey[300],
                          elevation: 1.1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),
                    ],
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
