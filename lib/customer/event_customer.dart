import 'package:assem_deal/customer/choice/customer_comment.dart';
import 'package:assem_deal/model/event.dart';
import 'package:assem_deal/services/notifier/event_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventCustomer extends StatefulWidget {
  @override
  _EventCustomerState createState() => _EventCustomerState();
}

class _EventCustomerState extends State<EventCustomer> {
  bool valueVariation;
  var avatar = 'https://www.testingxperts.com/wp-content/uploads/2019/02/placeholder-img.jpg';
  Events _currentEvent;
  var _imageUrl;
  int _count;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _count = 1;
    EventNotifier eventNotifier = Provider.of<EventNotifier>(context, listen: false);
    Future<void> _refreshEvent()async{
      eventNotifier.currentEvent;
    }
    if (eventNotifier.currentEvent != null) {
      _currentEvent = eventNotifier.currentEvent;
    }  else{
      _currentEvent = Events();
    }
    _imageUrl = _currentEvent.image;
    valueVariation = true;
  }

  _showImage(){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              width: 1,
              color: Colors.grey
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                _imageUrl
              )
            )
          ),
        ),
      );
  }

  void add(){
    setState(() {
      _count++;
    });
  }
  void minus(){
    setState(() {
      if(_count != 1){
        _count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    EventNotifier eventNotifier = Provider.of<EventNotifier>(context);
    Future<void> _refreshEvent()async{
      eventNotifier.currentEvent;
    }
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refreshEvent,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  _showImage(),
                  SizedBox(
                    height: 12,
                  ),
                  Text('Product : ${eventNotifier.currentEvent.productName}',style: TextStyle(fontSize: 15),),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Category : ${eventNotifier.currentEvent.category}',style: TextStyle(fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    child: Card(
                      color: Colors.grey[200],
                      elevation: 1.1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 100.0,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Center(
                          child: Text(
                            eventNotifier.currentEvent.eventDetail
                          ),
                        ),
                      ),
                    ),
                  ),//DETAIL PRODUCT
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Quantity : ${eventNotifier.currentEvent.currentAmount}'),
                      Text('Shop Require : ${eventNotifier.currentEvent.shopAmount}'),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    children: <Widget>[
                      Text('Resposible by Shop : ${eventNotifier.currentEvent.shopEmail}'),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Price per piece : ${eventNotifier.currentEvent.mediumPrice}'),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 1),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 12,
                          ),
                          Center(
                            child: Text(
                              'Choice',style: TextStyle(color: Colors.red,fontSize: 22),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: eventNotifier.currentEvent.variations.length,
                            itemBuilder: (BuildContext context, int index){
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
//                            Checkbox(
//                                value: valueVariation,
//                                activeColor: Colors.red,
//                                checkColor: Colors.white,
//                                onChanged: (bool val){
//                                  setState(() {
//                                    valueVariation = val;
//                                  });
//                                }),
                                  Text(eventNotifier.currentEvent.variations[index]),
                                  IconButton(
                                    onPressed: (){
                                      setState(() {
                                        eventNotifier.currentEvent.variations.removeAt(index);
                                      });
                                    },
                                    icon: Icon(
                                      Icons.clear
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[200]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RawMaterialButton(
                            onPressed: minus,
                            child: Icon(
                              Icons.remove,
                              color: Colors.blueGrey[300],
                            ),
                          ),
                          Text(
                            '$_count',
                            style: TextStyle(color: Colors.blueGrey[300],fontSize: 18),
                          ),
                          RawMaterialButton(
                            onPressed: add,
                            child: Icon(
                              Icons.add,
                              color: Colors.blueGrey[300],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Data Start : ${eventNotifier.currentEvent.createAt.toDate().toString()}'),
                      Text('Date End : ${eventNotifier.currentEvent.endAt.toString()}' ?? 'Not'),
                    ],
                  ),//DATE
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: RaisedButton(
                              color: Colors.blueGrey[200],
                              onPressed: (){},
                              elevation: 1.1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Text('JOIN',style: TextStyle(color: Colors.white,fontSize: 18),),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: RaisedButton(
                              color: Colors.blueGrey[200],
                              onPressed: (){},
                              elevation: 1.1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Text('Cancel',style: TextStyle(color: Colors.white,fontSize: 18),),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.share,color: Color(0xFF3B5998),),
                        ),
                      ],
                    ),
                  ),//Button JOIN
                  SizedBox(
                    height: 20.0,
                  ),
                  Divider(
                    height: 5.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[300],
                        borderRadius: BorderRadius.circular(5)
                      ),
                        child: Text(' The Creator ',style: TextStyle(color: Colors.white,fontSize: 20),)
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              eventNotifier.currentEvent.userPic
                            )
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                              eventNotifier.currentEvent.userEmail
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Quantity : ${eventNotifier.currentEvent.userAmount}'
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 5.0,
                  ),
                  Center(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[300],
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text(' Shop ',style: TextStyle(color: Colors.white,fontSize: 20),)
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              eventNotifier.currentEvent.shopPic ?? avatar
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            eventNotifier.currentEvent.shopEmail ?? 'No Shop offer'
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            eventNotifier.currentEvent.shopAmount ?? 'Quantity : 0'
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}