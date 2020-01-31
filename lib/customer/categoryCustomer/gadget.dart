import 'package:assem_deal/customer/controlPageCustomer/main_event.dart';
import 'package:assem_deal/search.dart';
import 'package:flutter/material.dart';

class Gadget extends StatefulWidget {
  @override
  _GadgetState createState() => _GadgetState();
}

class _GadgetState extends State<Gadget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 45.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Search()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ), //SEARCH
        ],
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          padding: EdgeInsets.all(5.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: <Widget>[
            Container(
              width: 200,
              height: 250,
              color: Colors.lightGreen,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainEvent()));
                },
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      'assets/prototype/sony.jpg',
                      fit: BoxFit.fill,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          color: Colors.grey[200],
                          child: Text(
                            'Sony WF-1000xm3',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 200,
              height: 250,
              color: Colors.lightGreen,
            ),
            Container(
              width: 200,
              height: 250,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 250,
              color: Colors.brown,
            ),
            Container(
              width: 200,
              height: 250,
              color: Colors.blueGrey,
            ),
            Container(
              width: 200,
              height: 250,
              color: Colors.deepOrange,
            ),
            Container(
              width: 200,
              height: 250,
              color: Colors.pink,
            ),
            Container(
              width: 200,
              height: 250,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
