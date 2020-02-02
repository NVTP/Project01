import 'package:flutter/material.dart';

class OnlyColor extends StatefulWidget {
  @override
  _OnlyColorState createState() => _OnlyColorState();
}

class _OnlyColorState extends State<OnlyColor> {
  final TextEditingController _eCtrl = new TextEditingController();
  List<String> textList = [];
  bool showDialog = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Event Step : 3'),
        centerTitle: true,
      ),
      body: SafeArea(
        child:  Column(
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
                child: Text('Add Color'),
                color: Colors.blueGrey[300],
              ),
            ),
            showDialog == true ?
            AlertDialog(
              title: Text('Alert'),
              content: TextField(
                controller: _eCtrl,
                decoration: InputDecoration.collapsed(hintText: 'Color'),
                maxLines: 1,
                autofocus: true,
                onSubmitted: (String text){

                },
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: (){
                    setState(() {
                      showDialog = false;
                      textList.add(_eCtrl.text);
                      _eCtrl.clear();
                    });
                  },
                  child: Text('OK'),
                ),
              ],
            ) : Text(''),
            Flexible(
              child: ListView.builder(
                itemCount: textList.length,
                itemBuilder: (BuildContext context, int Index){
                  return Row(
                    children: <Widget>[
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Text(textList[Index])
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
