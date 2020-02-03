import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UpdateShop extends StatefulWidget {
  @override
  _UpdateShopState createState() => _UpdateShopState();
}

class _UpdateShopState extends State<UpdateShop> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _shopAddress ;
  TextEditingController _shopEmail ;
  TextEditingController _shopPhone ;
  TextEditingController _shopName ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _shopAddress = TextEditingController();
    _shopEmail = TextEditingController();
    _shopPhone = TextEditingController();
    _shopName = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Update Profile',style: TextStyle(color: Colors.white,fontSize: 20),),
            floating: true,
            centerTitle: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: _shopName,
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        validator: (data){
                          if(data.isEmpty){
                            return 'Plese check Shop Name';
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Shop Name',
                            labelStyle: TextStyle(color: Colors.blueGrey[300]),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _shopPhone,
                        maxLines: 1,
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                        validator: (data){
                          if(data.isEmpty){
                            return 'Plese check Shop Phone';
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Shop Phone',
                            labelStyle: TextStyle(color: Colors.blueGrey[300]),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _shopEmail,
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        validator: (data){
                          if(data.isEmpty){
                            return 'Plese check Shop Email';
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Shop Email',
                            labelStyle: TextStyle(color: Colors.blueGrey[300]),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _shopAddress,
                        maxLines: null,
                        textAlign: TextAlign.justify,
                        keyboardType: TextInputType.multiline,
                        validator: (data){
                          if(data.isEmpty){
                            return 'Plese check Shop Name';
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Shop Name',
                            labelStyle: TextStyle(color: Colors.blueGrey[300]),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                        onPressed: (){
                          if(_formKey.currentState.validate()){

                          }
                        },
                        elevation: 1.1,
                        color: Colors.blueGrey[300],
                        child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 20),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
