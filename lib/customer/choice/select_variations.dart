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
    _count = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            title: Text('5555',style: TextStyle(color: Colors.white,fontSize: 20),),
            centerTitle: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              StatefulBuilder(
                builder: (BuildContext context, StateSetter setState){
                  return Column(
                    children: <Widget>[

                    ],
                  );
                },
              )
            ]),
          ),
        ],
      ),
    );
  }
}