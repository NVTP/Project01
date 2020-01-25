import 'package:assem_deal/customer/event_customer.dart';
import 'package:flutter/material.dart';

import '../search.dart';

class Clothing extends StatefulWidget {
  @override
  _ClothingState createState() => _ClothingState();
}

class _ClothingState extends State<Clothing> {
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Wrap(
                    alignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.up,
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 250,
                        color: Colors.black,
                      ),
                      Container(
                        width: 200,
                        height: 250,
                        color: Colors.red,
                      ),
                      Container(
                        width: 200,
                        height: 250,
                        color: Colors.amber,
                      ),
                      Container(
                        width: 200,
                        height: 250,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 200,
                        height: 250,
                        color: Colors.green,
                      ),
                      Container(
                        width: 200,
                        height: 250,
                        color: Colors.red,
                      ),
                      Container(
                        width: 200,
                        height: 250,
                        color: Colors.indigo,
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
                      Container(
                        width: 200,
                        height: 250,
                        color: Colors.lightGreen,
                        child: InkWell(
                          onTap: () {},
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              Image.asset(
                                'assets/prototype/timbuk.jpg',
                                fit: BoxFit.fill,
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  color: Colors.grey[200],
                                  child: Text(
                                    'Timbuk 2',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 250,
                        color: Colors.lightGreen,
                        child: InkWell(
                          onTap: () {},
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              Image.asset(
                                'assets/prototype/levis.jpg',
                                fit: BoxFit.fill,
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  color: Colors.grey[200],
                                  child: Text(
                                    'Levi\'s Shirt',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
