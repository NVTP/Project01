import 'package:assem_deal/customer/createEvent/selectVariations/color_size.dart';
import 'package:flutter/material.dart';

class ClothingSelect extends StatefulWidget {
  @override
  _ClothingSelectState createState() => _ClothingSelectState();
}

class _ClothingSelectState extends State<ClothingSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
           SliverAppBar(
             title: Text('Create Event Step : 2'),
             floating: true,
             centerTitle: true,
           ),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: 5.0,
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>ColorSize())
                    );
                  },
                  title: Text('Women\'s Clothing'),
                  trailing: Icon(
                      Icons.arrow_forward_ios
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>ColorSize())
                    );
                  },
                  title: Text('Men\'s Clothing'),
                  trailing: Icon(
                      Icons.arrow_forward_ios
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
