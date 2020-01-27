import 'package:assem_deal/choice/select_variations.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CreateEvent extends StatefulWidget {
  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  Future<File> imageFile;

  pickImageFromGallery(ImageSource source){
    setState(() {
      imageFile = ImagePicker.pickImage(source: source);
    });
  }

  Widget showImage(){
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot){
        if(snapshot.connectionState == ConnectionState.done && snapshot.data != null){
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Image.file(
              snapshot.data,
              fit: BoxFit.cover,
            ),
          );
        }else if(snapshot.error != null){
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        }else{
          return  Container(
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
          );
        }
      }
    );
  }

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
                  showImage(),
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    color: Colors.blueGrey[300],
                    child: Text('Add Picture',style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      pickImageFromGallery(ImageSource.gallery);
                    },
                  ),
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
                        SizedBox(
                          height: 10.0,
                        ),
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
                        SelectVariations(),//SELECT VARIATIONS
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('Medium Price ',style: TextStyle(color: Colors.blueGrey[300]),),
                            Flexible(
                              child: Container(
                                width: 100.0,
                                child: TextFormField(
                                  maxLines: 1,
                                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                                  controller: _productMediumPrice,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText: '0.00',
                                    hintStyle: TextStyle(color: Colors.blueGrey[300])
                                  ),
                                  validator: (data){
                                    if(data.isEmpty){
                                      return 'Fill price';
                                    }else{
                                      return null;
                                    }
                                  },
                                ),
                              ),
                            ),
                            Text('Bath',style: TextStyle(color: Colors.blueGrey[300]),)
                          ],
                        ),//MEDIUM PRICE
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('Amount Need ',style: TextStyle(color: Colors.blueGrey[300]),),
                            Flexible(
                              child: Container(
                                width: 100.0,
                                child: TextFormField(
                                  maxLines: 1,
                                  maxLength: 5,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                                  controller: _productNeed,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      hintText: '0',
                                      hintStyle: TextStyle(color: Colors.blueGrey[300])
                                  ),
                                  validator: (data){
                                    if(data.isEmpty){
                                      return 'Plese fill Amount need';
                                    }else{
                                      return null;
                                    }
                                  },
                                ),
                              ),
                            ),
                            Text('Piece',style: TextStyle(color: Colors.blueGrey[300]),)
                          ],
                        ),//AMOUNT NEED
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
