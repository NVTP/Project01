import 'package:flutter/material.dart';
//This Page for Customer to Select type of product

class SelectVariations extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SelectVariations();
  }

}
class _SelectVariations extends State<SelectVariations> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _color;
  TextEditingController _size;
  int _count ;

  @override
  void initState() {
    // TODO: implement initState
    _color = TextEditingController();
    _size = TextEditingController();
    super.initState();
    _count = 1;
  }

  void add(){
    setState(() {
      _count++;
    });
  }
  void minus(){
    setState(() {
      if(_count != 0){
        _count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          color: Colors.white,
          onPressed: ()=>showSlideUpView(context),
          elevation: 1.1,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          child: Container(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                text: 'Select variations ',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: '(e.g. color ,size)',style: TextStyle(color: Colors.grey[300])),
                ],
              ),
            ),
          ),
        ),
      ),
    );//SELECT VARIATIONS
  }

  void showSlideUpView(context){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _color,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Color...',
                        hintStyle: TextStyle(color: Colors.blueGrey[300]),
                        labelText: 'Color',
                        labelStyle: TextStyle(color: Colors.blueGrey[300]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _size,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Size...',
                        hintStyle: TextStyle(color: Colors.blueGrey[300]),
                        labelText: 'Size',
                        labelStyle: TextStyle(color: Colors.blueGrey[300]),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
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
              RaisedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        }
    );
  }
}