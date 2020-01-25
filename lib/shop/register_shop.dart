import 'package:flutter/material.dart';

class RegisterShop extends StatefulWidget {
  @override
  _RegisterShopState createState() => _RegisterShopState();
}

class _RegisterShopState extends State<RegisterShop> {

  bool showPW = true;
  String typeShop;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _shopUsername ;
  TextEditingController _shopPassword;
  TextEditingController _shopTax ;
  TextEditingController _shopAddress ;
  TextEditingController _shopEmail ;
  TextEditingController _shopPhone ;
  TextEditingController _shopName ;

  _handleRadioValueChange(String value){
    setState(() {
      typeShop = value;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    typeShop = 'Individual';
    _shopUsername = TextEditingController();
    _shopPassword = TextEditingController();
    _shopTax = TextEditingController();
    _shopAddress = TextEditingController();
    _shopEmail = TextEditingController();
    _shopPhone = TextEditingController();
    _shopName = TextEditingController();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        centerTitle: true,
       title: Text('Register Shop',style: TextStyle(color: Colors.white, fontSize: 20.0,fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 9.8,
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text('Type Shop',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                    ),
                  ),//TYPE
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: 'Individual',
                        groupValue: typeShop,
                        onChanged: _handleRadioValueChange,
                      ),
                      Text('Personal',style: TextStyle(color: Colors.blueGrey, fontSize: 18.0, fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Radio(
                          value: 'Company',
                          groupValue: typeShop,
                          onChanged: _handleRadioValueChange,
                        ),
                      ),
                      Text('Company',style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18.0),),
                    ],
                  ),
                  Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            maxLength: 13,
                            maxLines: 1,
                            keyboardType: TextInputType.numberWithOptions(decimal: false),
                            controller: _shopTax,
                            validator: (data){
                              if(data.isEmpty){
                                return null;
                              }else if(data.length != 13){
                                return 'Please count tax invoice';
                              }else{
                              return null;
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.attachment,
                                color: Colors.blueGrey[200],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: 'Tax Invoice',
                              hintStyle: TextStyle(color: Colors.blueGrey[200]),
                              labelText: 'Tax Invoice',
                              labelStyle: TextStyle(color: Colors.blueGrey[200]),
                            ),
                          ),//TAX INVOICE
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            maxLines: 1,
                            controller: _shopUsername,
                            validator: (data){
                              if(data.isEmpty){
                                return 'Please check Username';
                              }else{
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.blueGrey[200],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: 'Username',
                              hintStyle: TextStyle(color: Colors.blueGrey[200]),
                              labelText: 'Username',
                              labelStyle: TextStyle(color: Colors.blueGrey[200]),
                            ),
                          ),//USERNAME
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            maxLines: 1,
                            controller: _shopPassword,
                            validator: (data){
                              if(data.isEmpty){
                                return 'Please check Password';
                              }else{
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Colors.blueGrey[200],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: 'Username',
                              hintStyle: TextStyle(color: Colors.blueGrey[200]),
                              labelText: 'Username',
                              labelStyle: TextStyle(color: Colors.blueGrey[200]),
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
                            ),
                          ),//PASSWORD
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            maxLines: 1,
                            controller: _shopEmail,
                            validator: (data){
                              if(data.isEmpty){
                                return 'Please check Email';
                              }else{
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.blueGrey[200],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.blueGrey[200]),
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.blueGrey[200]),
                            ),
                          ),//EMAIL
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.numberWithOptions(decimal: false),
                            maxLength: 10,
                            maxLines: 1,
                            controller: _shopPhone,
                            validator: (data){
                              if(data.isEmpty){
                                return 'Please check Phone Number';
                              }else if(data.length != 10){
                                return 'Please count Phone Number';
                              }else{
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.blueGrey[200],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: 'PHONE',
                              hintStyle: TextStyle(color: Colors.blueGrey[200]),
                              labelText: 'PHONE',
                              labelStyle: TextStyle(color: Colors.blueGrey[200]),
                            ),
                          ),//PHONE
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            controller: _shopAddress,
                            validator: (data){
                              if(data.isEmpty){
                                return 'Please check Phone Number';
                              }else if(data.length != 10){
                                return 'Please count Phone Number';
                              }else{
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.home,
                                color: Colors.blueGrey[200],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: 'Address',
                              hintStyle: TextStyle(color: Colors.blueGrey[200]),
                              labelText: 'Address',
                              labelStyle: TextStyle(color: Colors.blueGrey[200]),
                            ),
                          ),//ADDRESS
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            maxLines: 1,
                            controller: _shopName,
                            validator: (data){
                              if(data.isEmpty){
                                return 'Please check Name Shop';
                              }else{
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: Colors.blueGrey[200],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: 'Shop Name',
                              hintStyle: TextStyle(color: Colors.blueGrey[200]),
                              labelText: 'Shop Name',
                              labelStyle: TextStyle(color: Colors.blueGrey[200]),
                            ),
                          ),//SHOP NAME
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: RaisedButton(
                              onPressed: (){
                                if(_formKey.currentState.validate()){

                                }
                              },
                              elevation: 1.0,
                              color: Colors.blueGrey[400],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text('Create Account', style: TextStyle(color: Colors.white,fontSize: 20.0),),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
