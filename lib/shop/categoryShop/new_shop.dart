import 'package:assem_deal/search.dart';
import 'package:assem_deal/shop/controlPageShop/main_event_shop.dart';
import 'package:flutter/material.dart';

class NewShop extends StatefulWidget {
  @override
  _NewShopState createState() => _NewShopState();
}

class _NewShopState extends State<NewShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
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
          SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              delegate: SliverChildListDelegate([
                Container(
                  height: 250,
                  width: 250,
//                  child: InkWell(
//                    onTap: (){
//                      Navigator.push(context,
//                      MaterialPageRoute(builder: (context)=>MainEventShop())
//                      );
//                    },
//                    child: Stack(
//                      fit: StackFit.expand,
//                      children: <Widget>[
//                        Image.asset(
//                          'assets/prototype/sony.jpg',
//                          fit: BoxFit.fill,
//                        ),
//                        Container(
//                          alignment: Alignment.bottomCenter,
//                          child: Container(
//                            color: Colors.grey,
//                              child: Text('Sony WF-1000xm3',style: TextStyle(color: Colors.black,fontSize: 18),)
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.amber,
                ),
                Container(
                  color: Colors.black,
                  height: 250,
                  width: 250,
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.amber,
                ),
                Container(
                  color: Colors.black,
                  height: 250,
                  width: 250,
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.amber,
                ),
                Container(
                  color: Colors.black,
                  height: 250,
                  width: 250,
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.amber,
                ),
                Container(
                  color: Colors.black,
                  height: 250,
                  width: 250,
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.amber,
                ),
                Container(
                  color: Colors.black,
                  height: 250,
                  width: 250,
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.amber,
                ),
              ])
          ),
        ],
      ),
    );
  }
}
