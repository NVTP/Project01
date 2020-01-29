import 'package:assem_deal/search.dart';
import 'package:assem_deal/shop/categoryShop/clothing_shop.dart';
import 'package:assem_deal/shop/categoryShop/gadget_shop.dart';
import 'package:assem_deal/shop/categoryShop/shoes_shop.dart';
import 'package:flutter/material.dart';

class HomeShop extends StatefulWidget {
  @override
  _HomeShopState createState() => _HomeShopState();
}

class _HomeShopState extends State<HomeShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          InkWell(
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>Search())
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[100],
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  Text('Search',style: TextStyle(color: Colors.grey,fontSize: 18),),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 70,
                          child: Card(
                            elevation: 1.1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    RawMaterialButton(
                                      onPressed: (){
                                        Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>GadgetShop())
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/images/Computer.png',
                                        fit: BoxFit.cover,
                                        height: 50,
                                        alignment: Alignment.center,
                                        color: Colors.blueGrey,
                                      ),
                                      elevation: 1.1,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                    ),
                                  ],
                                ),//GADGET
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    RawMaterialButton(
                                      onPressed: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context)=>ClothingShop())
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/images/Clothing.png',
                                        fit: BoxFit.cover,
                                        height: 50,
                                        alignment: Alignment.center,
                                        color: Colors.blueGrey,
                                      ),
                                      elevation: 1.1,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                    ),
                                  ],
                                ),//CLOTHING
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    RawMaterialButton(
                                      onPressed: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context)=>ShoesShop())
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/images/shoes.png',
                                        fit: BoxFit.cover,
                                        height: 50,
                                        alignment: Alignment.center,
                                        color: Colors.blueGrey,
                                      ),
                                      elevation: 1.1,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                    ),
                                  ],
                                ),//SHOES
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    RawMaterialButton(
                                      onPressed: (){},
                                      child: Image.asset(
                                        'assets/images/cream.png',
                                        fit: BoxFit.cover,
                                        height: 50,
                                        alignment: Alignment.center,
                                        color: Colors.blueGrey,
                                      ),
                                      elevation: 1.1,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                    ),
                                  ],
                                ),//CREAM
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    RawMaterialButton(
                                      onPressed: (){},
                                      child: Image.asset(
                                        'assets/images/eletronic.png',
                                        fit: BoxFit.cover,
                                        height: 50,
                                        alignment: Alignment.center,
                                        color: Colors.blueGrey,
                                      ),
                                      elevation: 1.1,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                    ),
                                  ],
                                ),//ELECTRIC
                              ],
                            ),
                          ),
                        ),//CATEGORY
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.new_releases,
                                      color: Colors.blueGrey,
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text('New !',style: TextStyle(color: Colors.blueGrey,fontSize: 20,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 1.1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            InkWell(
                                              onTap: (){},
                                              child: Column(
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                                                    height: 150,
                                                    width: 150,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20)
                                                    ),
                                                    child: Image.asset('assets/prototype/sony.jpg',fit: BoxFit.fill,),
                                                  ),
                                                  Text('Sony WF-1000xm3',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                                  SizedBox(
                                                    height: 10.0,
                                                  ),
                                                ],
                                              ),
                                            ),//SONY
                                            InkWell(
                                              onTap: (){},
                                              child: Column(
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                                                    height: 150,
                                                    width: 150,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20)
                                                    ),
                                                    child: Image.asset('assets/prototype/levis.jpg',fit: BoxFit.fill,),
                                                  ),
                                                  Text('Levi\'s',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                                  SizedBox(
                                                    height: 10.0,
                                                  ),
                                                ],
                                              ),
                                            ),//LEVIS
                                            InkWell(
                                              onTap: (){},
                                              child: Column(
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                                                    height: 150,
                                                    width: 150,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20)
                                                    ),
                                                    child: Image.asset('assets/prototype/timbuk.jpg',fit: BoxFit.fill,),
                                                  ),
                                                  Text('Timbuk 2',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                                  SizedBox(
                                                    height: 10.0,
                                                  ),
                                                ],
                                              ),
                                            ),//TIMBUK
                                            InkWell(
                                              onTap: (){},
                                              child: Column(
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                                                    height: 150,
                                                    width: 150,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20)
                                                    ),
                                                    child: Image.asset('assets/prototype/stan.jpg',fit: BoxFit.fill,),
                                                  ),
                                                  Text('Adidas Stan Smith',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                                  SizedBox(
                                                    height: 10.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            InkWell(
                                              onTap: (){},
                                              child: Column(
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                                                    height: 150,
                                                    width: 150,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20)
                                                    ),
                                                    child: Image.asset('assets/prototype/sony.jpg',fit: BoxFit.fill,),
                                                  ),
                                                  Text('Sony WF-1000xm3',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                                  SizedBox(
                                                    height: 10.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),//NEW
                        SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(
                            height: 2.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 12.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text('Warring Time',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20.0),)
                            ],
                          ),
                        ),
                        Card(
                          elevation: 1.1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: (){},
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                                              height: 150,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: Image.asset('assets/prototype/levis.jpg',fit: BoxFit.fill,),
                                            ),
                                           Row(
                                             children: <Widget>[
                                               Icon(Icons.watch_later,color: Colors.blueGrey,),
                                               Text('2020/1/23',
                                               style: TextStyle(
                                                 fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.blueGrey
                                               ),
                                               ),
                                             ],
                                           ),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                          ],
                                        ),
                                      ),//LEVIS
                                      InkWell(
                                        onTap: (){},
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                                              height: 150,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: Image.asset('assets/prototype/intel.jpg',fit: BoxFit.fill,),
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.watch_later,color: Colors.blueGrey,),
                                                Text('2020/1/23',
                                                  style: TextStyle(
                                                      fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.blueGrey
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                          ],
                                        ),
                                      ),//INTEL
                                      InkWell(
                                        onTap: (){},
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                                              height: 150,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: Image.asset('assets/prototype/timbuk.jpg',fit: BoxFit.fill,),
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.watch_later,color: Colors.blueGrey,),
                                                Text('2020/1/23',
                                                  style: TextStyle(
                                                      fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.blueGrey
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                          ],
                                        ),
                                      ),//TIMBUK
                                      InkWell(
                                        onTap: (){},
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                                              height: 150,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: Image.asset('assets/prototype/stan.jpg',fit: BoxFit.fill,),
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.watch_later,color: Colors.blueGrey,),
                                                Text('2020/1/23',
                                                  style: TextStyle(
                                                      fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.blueGrey
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                          ],
                                        ),
                                      ),//ADIDAS
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
