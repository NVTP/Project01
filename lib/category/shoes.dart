import 'package:assem_deal/search.dart';
import 'package:flutter/material.dart';

class Shoes extends StatefulWidget {
  @override
  _ShoesState createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
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
                  height: 10,
                ),
                Wrap(
                  runSpacing: 10.0,
                  spacing: 10.0,
                  verticalDirection: VerticalDirection.up,
                  alignment: WrapAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 250,
                      color: Colors.blue,
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
                              'assets/prototype/stan.jpg',
                              fit: BoxFit.fill,
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  color: Colors.grey[200],
                                  child: Text(
                                    'Adidas Stan Smith',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
