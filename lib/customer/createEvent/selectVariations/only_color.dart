import 'package:assem_deal/customer/createEvent/finish_event.dart';
import 'package:flutter/material.dart';

class OnlyColor extends StatefulWidget {
  @override
  _OnlyColorState createState() => _OnlyColorState();
}

class _OnlyColorState extends State<OnlyColor> {
  final TextEditingController _eCtrl = new TextEditingController();
  List<String> textList = [];
  bool showDialog = false;
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Event Step : 3'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: Colors.grey,
                      width: 1.0
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: RaisedButton(
                            onPressed: (){
                              setState(() {
                                showDialog = true;
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            elevation: 1.1,
                            child: Text('Add Color',style: TextStyle(color: Colors.white),),
                            color: Colors.blueGrey[300],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.center,
                          height: 50,
                          child: Card(
                            elevation: 1.1,
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 25,
                              child: Text(
                                ' This Step for set Color of product ',
                                style: TextStyle(color: Colors.black,fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text('White'),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.clear
                            ),
                            onPressed: (){},
                          ),
                        ),
                        Divider(
                          height: 0.0,
                          color: Colors.grey,
                        ),
                        ListTile(
                          title: Text('Black'),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.clear
                            ),
                            onPressed: (){},
                          ),
                        ),
                        Divider(
                          height: 0.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    showDialog == true ?
                    AlertDialog(
                      title: Text('Choose Color for Event'),
                      content: Form(
                        key: _formKey,
                        child: TextFormField(
                          validator: (value){
                            if(value.isEmpty){
                              return 'Fill Color';
                            }else{
                              return null;
                            }
                          },
                          controller: _eCtrl,
                          decoration: InputDecoration.collapsed(hintText: 'Color'),
                          maxLines: 1,
                          autofocus: true,
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: Text('Cancel'),
                        ),
                        FlatButton(
                          onPressed: (){
                            if(_formKey.currentState.validate()){
                              setState(() {
                                showDialog = false;
                                textList.add(_eCtrl.text);
                                _eCtrl.clear();
                              });
                            }
                          },
                          child: Text('OK'),
                        ),
                      ],
                    ) : Text(''),
                    ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (context, Index){
                          return Divider(
                            color: Colors.grey,
                            height: 0.0,
                          );
                        },
                        itemCount: textList.length,
                      itemBuilder: (context, Index){
                          return ListTile(
                            title: Text(textList[Index]),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.clear,
                              ),
                              onPressed: (){},
                            ),
                          );
                      },
                    ),
                  ],
                ),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>FinishEvent())
                  );
                },
                child: Text('Next -> ',style: TextStyle(color: Colors.white),),
                elevation: 1.1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.blueGrey[300],
              ),
            ],
          ),
        ),
      )
    );
  }
}
