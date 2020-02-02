import 'package:assem_deal/customer/createEvent/clothing_select.dart';
import 'package:assem_deal/customer/createEvent/cream_select.dart';
import 'package:assem_deal/customer/createEvent/electronic_select.dart';
import 'package:assem_deal/customer/createEvent/gadget_select.dart';
import 'package:assem_deal/customer/createEvent/shoes_select.dart';
import 'package:assem_deal/customer/createEvent/sport_select.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class CreateEvent extends StatefulWidget {
  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {

  final _formKey = GlobalKey<FormState>();
  List catData; //collect data for dropdown
  List<DropdownMenuItem<String>> catToDo = []; //bring data to dropdown
  String catDataSelected; // keep data for dropdown select

  TextEditingController _productType;
  TextEditingController _productName;
  TextEditingController _productDetail;
  TextEditingController _productNeed;
  TextEditingController _productMediumPrice;
  TextEditingController _eventName;

  @override
  void initState() {
    // TODO: implement initState
    _productType = TextEditingController();
    _productName = TextEditingController();
    _productDetail = TextEditingController();
    _productNeed = TextEditingController();
    _productMediumPrice = TextEditingController();
    _eventName = TextEditingController();

    super.initState();

    catData = [
      'Gadget',
      'Clothing',
      'Shoes',
      'Beauty',
      'Sport',
      'Electric',
    ];
    for (int i = 0; i < catData.length; i++) {
      catToDo.add(
        DropdownMenuItem(
          child: Text(
            catData[i],
            style: TextStyle(
              color: Colors.blueGrey[300],
            ),
          ),
          value: catData[i],
        ),
      );
    }
    catDataSelected = catData[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Create Event Step : 1'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 100.0),
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: <Widget>[
                          Card(
                            color: Colors.grey[200],
                            elevation: 1.1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              width: MediaQuery.of(context).size.width,
                              height: 100.0,
                              child: ListView(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text('This is Permission before create event'),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text('ok'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            controller: _eventName,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.event,
                                color: Colors.blueGrey[300],
                              ),
                              hintText: 'Event Name',
                              hintStyle: TextStyle(color: Colors.blueGrey[300]),
                              labelText: 'Event Name',
                              labelStyle: TextStyle(color: Colors.blueGrey[300]),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Plese Fill Event Name';
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            controller: _productName,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.event,
                                color: Colors.blueGrey[300],
                              ),
                              hintText: 'Product Name',
                              hintStyle: TextStyle(color: Colors.blueGrey[300]),
                              labelText: 'Product Name',
                              labelStyle: TextStyle(color: Colors.blueGrey[300]),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Plese Fill Product Name';
                              } else {
                                return null;
                              }
                            },
                          ), //PRODUCT NAME
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.5
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[100],
                            ),
                            child: DropdownMenuItem(
                              child: DropdownButton(
                                items: catToDo,
                                value: catDataSelected,
                                isExpanded: true,
                                onChanged: (data) {
                                  setState(() {
                                    catDataSelected = data;
                                  });
                                },
                              ),
                            ),
                          ), //CATEGORY
                          SizedBox(
                            height: 30.0,
                          ),
                          RaisedButton(
                            onPressed: (){
                              //if(_formKey.currentState.validate()){}
                              if(catDataSelected == 'Clothing'){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>ClothingSelect())
                                );
                              }else if(catDataSelected == 'Shoes'){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>ShoesSelect())
                                );
                              }else if(catDataSelected == 'Gadget'){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>GadgetSelect())
                                );
                              }else if(catDataSelected == 'Beauty'){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>CreamSelect())
                                );
                              }else if(catDataSelected == 'Sport'){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>SportSelect())
                                );
                              }else{
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>ElectronicSelect())
                                );
                              }
                            },
                            color: Colors.blueGrey[300],
                            child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),//CREATE EVENT
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}