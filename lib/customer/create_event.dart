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

  TextEditingController _eventName;
  TextEditingController _productName;
  TextEditingController _productDetail;
  TextEditingController _productNeed;
  TextEditingController _productMediumPrice;
  TextEditingController _productOfferPrice;
  TextEditingController _productOfferNeed;

  @override
  void initState() {
    // TODO: implement initState
    _eventName = TextEditingController();
    _productName = TextEditingController();
    _productDetail = TextEditingController();
    _productNeed = TextEditingController();
    _productMediumPrice = TextEditingController();
    _productOfferPrice = TextEditingController();
    _productOfferNeed = TextEditingController();

    super.initState();

    catData = [
      'Clothing',
      'Shoes',
      'Gadget',
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.picture_in_picture,
                            size: 50,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Text(
                            'Add Picture',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ), //ADD PICTURE
                  SizedBox(
                    height: 10.0,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
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
                              return 'Plese Set Event Name';
                            } else {
                              return null;
                            }
                          },
                        ), //EVENT NAME
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          controller: _productName,
                          decoration: InputDecoration(
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
                          height: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
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
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          reverse: true,
                          child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            controller: _productDetail,
                            decoration: InputDecoration(
                              hintText: 'Product Detail',
                              hintStyle: TextStyle(color: Colors.blueGrey[300]),
                              labelText: 'Product Detail',
                              labelStyle: TextStyle(color: Colors.blueGrey[300]),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Plese Fill Product Detail for Every One';
                                } else {
                                  return null;
                                }
                              },
                          ),
                        ),//PRODUCT DETAIL SCROLL VERTICAL
                        SizedBox(
                          height: 10,
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          onPressed: (){
                            if(_formKey.currentState.validate()){

                            }
                          },
                          color: Colors.blueGrey[300],
                          child: Text('Create Event',style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),//CREATE EVENT
                      ],
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
