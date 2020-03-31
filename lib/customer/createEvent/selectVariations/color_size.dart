//import 'package:assem_deal/customer/createEvent/finish_event.dart';
//import 'package:flutter/material.dart';
//
//class ColorSize extends StatefulWidget {
//  @override
//  _ColorSizeState createState() => _ColorSizeState();
//}
//
//class _ColorSizeState extends State<ColorSize> {
//  final _formKey = GlobalKey<FormState>();
//  TextEditingController _color;
//  TextEditingController _size;
//  List<String> colorList = [];
//  List<String> sizeList = [];
//  bool showDialogColor = false;
//  bool showDialogSize = false;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    _color = TextEditingController();
//    _size = TextEditingController();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//        title: Text('Create Event Step : 3'),
//      ),
//      body: SingleChildScrollView(
//        child: Column(
//          children: <Widget>[
//            Container(
//              margin: EdgeInsets.all(10),
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(20),
//                border: Border.all(
//                    color: Colors.grey,
//                    width: 1.0
//                ),
//              ),
//              child: Column(
//                children: <Widget>[
//                  Column(
//                    children: <Widget>[
//                      Container(
//                        alignment: Alignment.topRight,
//                        padding: EdgeInsets.symmetric(horizontal: 20),
//                        child: RaisedButton(
//                          onPressed: (){
//                            setState(() {
//                              showDialogColor = true;
//                            });
//                          },
//                          shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(20)
//                          ),
//                          elevation: 1.1,
//                          child: Text('Add Color',style: TextStyle(color: Colors.white),),
//                          color: Colors.blueGrey[300],
//                        ),
//                      ),
//                      Container(
//                        padding: EdgeInsets.symmetric(horizontal: 20),
//                        alignment: Alignment.center,
//                        height: 50,
//                        child: Card(
//                          elevation: 1.1,
//                          color: Colors.grey[200],
//                          shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(20),
//                          ),
//                          child: Container(
//                            width: MediaQuery.of(context).size.width,
//                            height: 25,
//                            child: Text(
//                              ' This Step for set Color of product ',
//                              style: TextStyle(color: Colors.black,fontSize: 18),
//                            ),
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Center(child: Text('Ex. White , Black')),
//                      ),
//                      Divider(
//                        height: 0.0,
//                        color: Colors.grey,
//                      ),
////                      ListTile(
////                        title: Text('Black'),
////                        trailing: IconButton(
////                          icon: Icon(
////                              Icons.clear
////                          ),
////                          onPressed: (){},
////                        ),
////                      ),
//                      Divider(
//                        height: 0.0,
//                        color: Colors.grey,
//                      ),
//                    ],
//                  ),
//                  showDialogColor == true ?
//                  AlertDialog(
//                    title: Text('Choose Color for Event'),
//                    content: Form(
//                      key: _formKey,
//                      child: TextFormField(
//                        validator: (value){
//                          if(value.isEmpty){
//                            return 'Fill Color';
//                          }else{
//                            return null;
//                          }
//                        },
//                        controller: _color,
//                        decoration: InputDecoration.collapsed(hintText: 'Color'),
//                        maxLines: 1,
//                        autofocus: true,
//                      ),
//                    ),
//                    actions: <Widget>[
//                      FlatButton(
//                        onPressed: (){
//                          Navigator.of(context).pop();
//                        },
//                        child: Text('Cancel'),
//                      ),
//                      FlatButton(
//                        onPressed: (){
//                          if(_formKey.currentState.validate()){
//                            setState(() {
//                              showDialogColor = false;
//                              colorList.add(_color.text);
//                              _color.clear();
//                            });
//                          }
//                        },
//                        child: Text('OK'),
//                      ),
//                    ],
//                  ) : Text(''),
//                  ListView.separated(
//                    shrinkWrap: true,
//                    separatorBuilder: (context, Index){
//                      return Divider(
//                        color: Colors.grey,
//                        height: 0.0,
//                      );
//                    },
//                    itemCount: colorList.length,
//                    itemBuilder: (context, Index){
//                      return ListTile(
//                        title: Text(colorList[Index]),
//                        trailing: IconButton(
//                          icon: Icon(
//                            Icons.clear,
//                          ),
//                          onPressed: (){
//                            setState(() {
//                              colorList.removeAt(Index);
//                            });
//                          },
//                        ),
//                      );
//                    },
//                  ),
//                ],
//              ),
//            ),
//            Container(
//              margin: EdgeInsets.all(10),
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(20),
//                border: Border.all(
//                    color: Colors.grey,
//                    width: 1.0
//                ),
//              ),
//              child: Column(
//                children: <Widget>[
//                  Column(
//                    children: <Widget>[
//                      Container(
//                        alignment: Alignment.topRight,
//                        padding: EdgeInsets.symmetric(horizontal: 20),
//                        child: RaisedButton(
//                          onPressed: (){
//                            setState(() {
//                              showDialogSize = true;
//                            });
//                          },
//                          shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(20)
//                          ),
//                          elevation: 1.1,
//                          child: Text('Add Size',style: TextStyle(color: Colors.white),),
//                          color: Colors.blueGrey[300],
//                        ),
//                      ),
//                      Container(
//                        padding: EdgeInsets.symmetric(horizontal: 20),
//                        alignment: Alignment.center,
//                        height: 50,
//                        child: Card(
//                          elevation: 1.1,
//                          color: Colors.grey[200],
//                          shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(20),
//                          ),
//                          child: Container(
//                            width: MediaQuery.of(context).size.width,
//                            height: 25,
//                            child: Text(
//                              ' This Step for set Size of product ',
//                              style: TextStyle(color: Colors.black,fontSize: 18),
//                            ),
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Center(child: Text('Ex. M , L')),
//                      ),
//                      Divider(
//                        height: 0.0,
//                        color: Colors.grey,
//                      ),
////                      ListTile(
////                        title: Text('L'),
////                        trailing: IconButton(
////                          icon: Icon(
////                              Icons.clear
////                          ),
////                          onPressed: (){},
////                        ),
////                      ),
//                      Divider(
//                        height: 0.0,
//                        color: Colors.grey,
//                      ),
//                    ],
//                  ),
//                  showDialogSize == true ?
//                  AlertDialog(
//                    title: Text('Choose Size for Event'),
//                    content: Form(
//                      key: _formKey,
//                      child: TextFormField(
//                        validator: (value){
//                          if(value.isEmpty){
//                            return 'Fill Size';
//                          }else{
//                            return null;
//                          }
//                        },
//                        controller: _size,
//                        decoration: InputDecoration.collapsed(hintText: 'Size'),
//                        maxLines: 1,
//                        autofocus: true,
//                      ),
//                    ),
//                    actions: <Widget>[
//                      FlatButton(
//                        onPressed: (){
//                          Navigator.of(context).pop();
//                        },
//                        child: Text('Cancel'),
//                      ),
//                      FlatButton(
//                        onPressed: (){
//                          if(_formKey.currentState.validate()){
//                            setState(() {
//                              showDialogSize = false;
//                              sizeList.add(_size.text);
//                              _size.clear();
//                            });
//                          }
//                        },
//                        child: Text('OK'),
//                      ),
//                    ],
//                  ) : Text(''),
//                  ListView.separated(
//                    shrinkWrap: true,
//                    separatorBuilder: (context, Index){
//                      return Divider(
//                        color: Colors.grey,
//                        height: 0.0,
//                      );
//                    },
//                    itemCount: sizeList.length,
//                    itemBuilder: (context, Index){
//                      return ListTile(
//                        title: Text(sizeList[Index]),
//                        trailing: IconButton(
//                          icon: Icon(
//                            Icons.clear,
//                          ),
//                          onPressed: (){
//                            setState(() {
//                              sizeList.removeAt(Index);
//                            });
//                          },
//                        ),
//                      );
//                    },
//                  ),
//                ],
//              ),
//            ),
//            RaisedButton(
//              onPressed: (){
//                //TODO
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context)=>FinishEvent())
//                );
//              },
//              child: Text('Next -> ',style: TextStyle(color: Colors.white),),
//              elevation: 1.1,
//              shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(20)
//              ),
//              color: Colors.blueGrey[300],
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
