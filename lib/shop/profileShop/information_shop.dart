import 'package:flutter/material.dart';

class InformationShop extends StatefulWidget {
  @override
  _InformationShopState createState() => _InformationShopState();
}

class _InformationShopState extends State<InformationShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Information',style: TextStyle(color: Colors.white,fontSize: 20),),
            centerTitle: true,
            floating: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                        'assets/images/sony.jpeg',
                      ),
                      radius: 75,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text('Reviews'),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('1'),
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 50,
                          color: Colors.grey,
                        ),
                        Column(
                          children: <Widget>[
                            Text('Follower'),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('1'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 1.1,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                            'assets/prototype/virgil.jpg'
                          ),
                          radius: 35,
                        ),
                        title: Text('Virgil van Dijk'),
                        subtitle: Text('Very Good !'),
                        trailing: IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.more_vert
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
