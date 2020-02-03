import 'package:assem_deal/customer/choice/upload_image_profile.dart';
import 'package:assem_deal/customer/controlPageCustomer/main_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FinishEvent extends StatefulWidget {

  @override
  _FinishEventState createState() => _FinishEventState();
}

class _FinishEventState extends State<FinishEvent> {
  final _formKey = GlobalKey<FormState>();
  int _count;
  TextEditingController _productDetail;
  TextEditingController _productMediumPrice;
  TextEditingController _productName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _count = 1;
    _productDetail = TextEditingController();
    _productName = TextEditingController();
    _productMediumPrice = TextEditingController();
  }

  void add(){
    setState(() {
      _count++;
    });
  }
  void minus(){
    setState(() {
      if(_count != 1){
        _count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Create Event Step : 4'),
            centerTitle: true,
            floating: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      UploadImage(),
                      SizedBox(
                        height: 10,
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
                        height: 10,
                      ),
                      TextFormField(
                        maxLines: null,
                        textAlign: TextAlign.justify,
                        keyboardType: TextInputType.multiline,
                        controller: _productDetail,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.details,
                            color: Colors.blueGrey[300],
                          ),
                          hintText: 'Product Detail',
                          hintStyle: TextStyle(color: Colors.blueGrey[300]),
                          labelText: 'Product Detail',
                          labelStyle: TextStyle(color: Colors.blueGrey[300]),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Plese Fill Product Detail';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Medium Price',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                          SizedBox(
                            width: 5.0,
                          ),
                          Flexible(
                            child: Container(
                              child: TextFormField(
                                controller: _productMediumPrice,
                                maxLines: 1,
                                keyboardType: TextInputType.number,
                                inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                                decoration: InputDecoration(
                                  hintText: '0 Bath',
                                  hintStyle: TextStyle(fontSize: 18),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                                validator: (data){
                                  if(data.isEmpty){
                                    return 'Fill Price';
                                  }else{
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Checkbox(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[200]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RawMaterialButton(
                              onPressed: minus,
                              child: Icon(
                                Icons.remove,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              '$_count',
                              style: TextStyle(color: Colors.blueGrey[300],fontSize: 18),
                            ),
                            RawMaterialButton(
                              onPressed: add,
                              child: Icon(
                                Icons.add,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                          ],
                        ),
                      ),//ADD
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                onPressed: (){},
                                elevation: 1.1,
                                child: Text('Cancel',style: TextStyle(color: Colors.black),),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.0
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                onPressed: (){
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>MainEvent())
                                  );
                                },
                                elevation: 1.1,
                                child: Text('OK',style: TextStyle(color: Colors.white),),
                                color: Colors.blueGrey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
