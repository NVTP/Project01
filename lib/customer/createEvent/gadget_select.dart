import 'package:assem_deal/customer/createEvent/selectVariations/only_color.dart';
import 'package:flutter/material.dart';

class GadgetSelect extends StatefulWidget {
  @override
  _GadgetSelectState createState() => _GadgetSelectState();
}

class _GadgetSelectState extends State<GadgetSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Creae Event Step : 2'),
            centerTitle: true,
            floating: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 5.0,
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>OnlyColor())
                  );
                },
                title: Text('Small Talk/Bluetooth'),
                trailing: Icon(
                  Icons.arrow_forward_ios
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              ListTile(
                onTap: (){},
                title: Text('Power Bank'),
                trailing: Icon(
                    Icons.arrow_forward_ios
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              ListTile(
                onTap: (){},
                title: Text('Adapter'),
                trailing: Icon(
                    Icons.arrow_forward_ios
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
