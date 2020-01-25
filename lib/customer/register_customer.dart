import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class RegisterCustomer extends StatefulWidget {
  @override
  _RegisterCustomerState createState() => _RegisterCustomerState();
}

class _RegisterCustomerState extends State<RegisterCustomer> {

  bool showPW = true;
  String _age = 'Birth Day';
  String gender;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _cusFName ;
  TextEditingController _cusLName;
  TextEditingController _cusUsername ;
  TextEditingController _cusPassword ;
  TextEditingController _cusEmail ;
  TextEditingController _cusPhone ;

  _handleRadioValueChange(String value){
    setState(() {
      gender = value;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    gender = 'Man';
    _cusFName = TextEditingController();
    _cusLName = TextEditingController();
    _cusUsername = TextEditingController();
    _cusPassword = TextEditingController();
    _cusEmail = TextEditingController();
    _cusPhone = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Register Customer',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.blueGrey[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 1.1,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Radio(
                              groupValue: gender,
                              value: 'Man',
                              onChanged: _handleRadioValueChange,
                            ),
                            Text('ชาย',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0,right: 10.0),
                              child: Radio(
                                groupValue: gender,
                                value: 'Girl',
                                onChanged: _handleRadioValueChange,
                              ),
                            ),
                            Text('หญิง',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),),
                          ],
                        ),//GENDER
                        SizedBox(
                          height: 12.0,
                        ),
                        TextFormField(
                          maxLines: 1,
                         keyboardType: TextInputType.text,
                         controller: _cusFName,
                         validator: (value){
                           if(value.isEmpty){
                             return 'Plese check First Name';
                           }else {
                             return null;
                           }
                         },
                         decoration: InputDecoration(
                           prefixIcon: Icon(
                             Icons.person_outline,
                             color: Colors.blueGrey[200],
                           ),
                           hintText: 'First Name',
                           focusColor: Colors.black,
                           labelText: 'First Name',
                           labelStyle: TextStyle(color: Colors.blueGrey[200]),
                           hintStyle: TextStyle(color: Colors.black),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20),
                           ),
                         ),
                       ),//FIRST NAME
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          controller: _cusLName,
                          validator: (value){
                            if(value.isEmpty){
                              return 'Plese check Last Name';
                            }else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person_outline,
                              color: Colors.blueGrey[200],
                            ),
                            hintText: 'Last Name',
                            focusColor: Colors.black,
                            labelText: 'Last Name',
                            labelStyle: TextStyle(color: Colors.blueGrey[200]),
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),//LAST NAME
                        SizedBox(
                          height: 10.0,
                        ),
                        RaisedButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          onPressed: (){
                            DatePicker.showDatePicker(context,
                              theme: DatePickerTheme(
                                containerHeight: 210.0,
                              ),
                              showTitleActions: true,
                              minTime: DateTime(1950, 1, 1),
                              maxTime: DateTime(2021, 12, 31),onConfirm: (date){
                              print('Confirm $date');
                              _age = '${date.year} - ${date.month} - ${date.day}';
                              setState(() {

                              });
                                },currentTime: DateTime.now(), locale: LocaleType.en
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.date_range,
                                        size: 18.0,
                                        color: Colors.blueGrey[200],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Text('$_age',
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),//BIRTH DAY
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          maxLines: 1,
                          controller: _cusUsername,
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
                        ),//Username
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          maxLines: 1,
                          controller: _cusPassword,
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
                        ),//Password
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          maxLines: 1,
                          keyboardType: TextInputType.emailAddress,
                          controller: _cusEmail,
                          validator: (value){
                            if(value.isEmpty){
                              return 'Plese check Email';
                            }else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.blueGrey[200],
                            ),
                            hintText: 'Email',
                            focusColor: Colors.black,
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.blueGrey[200]),
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),//EMAIL
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          maxLength: 10,
                          maxLines: 1,
                          keyboardType: TextInputType.phone,
                          controller: _cusPhone,
                          validator: (value){
                            if(value.isEmpty){
                              return 'Please check Phone Number';
                            }else if(value.length != 10){
                              return 'Please check Length Number';
                            }else{
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.blueGrey[200],
                            ),
                            hintText: 'Phone Number',
                            focusColor: Colors.black,
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(color: Colors.blueGrey[200]),
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),//PHONE
                        SizedBox(
                          height: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 50.0,
                            width: MediaQuery.of(context).size.width,
                            child: RaisedButton(
                              color: Colors.blueGrey[400],
                              onPressed: (){
                                if(_formKey.currentState.validate()){

                                }
                              },
                              elevation: 1.1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text('Create Account', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),//CREATE ACCOUNT
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
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
