import 'package:assem_deal/customer/controlPageCustomer/main_event.dart';
import 'package:assem_deal/model/event.dart';
import 'package:assem_deal/model/user_join.dart';
import 'package:assem_deal/services/notifier/event_notifier.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartCusJoin extends StatefulWidget {
  @override
  _CartCusJoinState createState() => _CartCusJoinState();
}

class _CartCusJoinState extends State<CartCusJoin> {
  var avatar = 'https://www.testingxperts.com/wp-content/uploads/2019/02/placeholder-img.jpg';
  var uid;
  Events _events;

  showID() async {
    var evId = _events.eventId;
    print(evId);
  }

  Future getUserJoin(EventNotifier eventNotifier) async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    setState(() {
      uid = user.uid;
    });
    QuerySnapshot snapshot = await Firestore.instance
        .collection('users')
        .document(uid)
        .collection('userJoin')
        .getDocuments();
    List<UserJoin> _userJoinList = [];
    snapshot.documents.forEach((docs) {
      UserJoin userJoin = UserJoin.fromMap(docs.data);
      _userJoinList.add(userJoin);
    });
    eventNotifier.userJoinList = _userJoinList;
  }

  getNew(EventNotifier eventNotifier) async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    setState(() {
      uid = user.uid;
    });
        var aaaa = Firestore.instance.collection('events').snapshots();
     Firestore.instance.collection('users').document(user.uid).collection(
        'activity').where('create', arrayContains: aaaa).reference().snapshots().listen((val){
       print('AAAA ${val.documents.length}');
       val.documents.forEach((docs){
         print(docs.data['create']);
       });
     });


//    var ofUser = Firestore.instance.collection('users')
//        .document(uid)
//        .collection('activity')
//        .document('create');
//    ofUser.get().then((val){
//      print(val.data['create'].toString());
//      print(val.data.length);
//    }).catchError((e){
//      print('aaaa$e');
//    });
//
//    Firestore.instance.collection('events').where(
//        'eventId', isEqualTo: ofUser.path)
//         .reference()
//        .snapshots()
//        .listen((val){
//          print(val.documents.length);
//          val.documents.forEach((docs){
//            print('aaaa $docs.data');
//          });
//    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    EventNotifier eventNotifier = Provider.of<EventNotifier>(context, listen: false);
    getUserJoin(eventNotifier);
  }

  @override
  Widget build(BuildContext context) {
    EventNotifier eventNotifier = Provider.of<EventNotifier>(context);
    Future<void> _refresh() async {
      getUserJoin(eventNotifier);
    }
    if (eventNotifier.userJoinList.isEmpty) {
      return Column(
        children: <Widget>[
          Center(
            child: Text('Sorry you don\'t have',
              style: TextStyle(color: Colors.red, fontSize: 40),),
          ),
          RaisedButton(
            onPressed: () => getNew(eventNotifier),
            child: Text('ok'),
          ),
        ],
      );
    }
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              height: 10,
              color: Colors.white,
            );
          },
          itemCount: eventNotifier.userJoinList.length,
          itemBuilder: (context, index) {
            return Center(
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.grey, width: 2),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              eventNotifier.userJoinList[index].image
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Product Name : ' +
                        eventNotifier.userJoinList[index].productName,
                      style: TextStyle(fontSize: 15),),
                    Text('Amount : ' +
                        eventNotifier.userJoinList[index].userAmount,
                      style: TextStyle(fontSize: 18),),
                    Text('Current Amount : ' +
                        eventNotifier.userJoinList[index].currentAmount,
                      style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
            );
          },
        ),
      ),
     );
  }
}
