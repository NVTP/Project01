import 'package:assem_deal/customer/choice/customer_comment.dart';
import 'package:assem_deal/customer/controlPageCustomer/main_customer.dart';
import 'package:assem_deal/customer/controlPageCustomer/main_event.dart';
import 'package:assem_deal/model/event.dart';
import 'package:assem_deal/model/user_join.dart';
import 'package:assem_deal/services/notifier/event_notifier.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class EventCustomer extends StatefulWidget {
  @override
  _EventCustomerState createState() => _EventCustomerState();
}

class _EventCustomerState extends State<EventCustomer> {
  bool valueVariation;
  var avatar =
      'https://www.testingxperts.com/wp-content/uploads/2019/02/placeholder-img.jpg';
  Events _currentEvent;
  var _imageUrl;
  int _count;
  List forUser = [];
  TextEditingController address;
  TextEditingController province;
  TextEditingController phone;
  TextEditingController name;
  UserJoin _userJoin;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userJoin = UserJoin();
    _count = 1;
    address = TextEditingController();
    province = TextEditingController();
    phone = TextEditingController();
    name = TextEditingController();
    EventNotifier eventNotifier =
        Provider.of<EventNotifier>(context, listen: false);
    Future<void> _refreshEvent() async {
      eventNotifier.currentEvent;
    }

    if (eventNotifier.currentEvent != null) {
      _currentEvent = eventNotifier.currentEvent;
    } else {
      _currentEvent = Events();
    }
    _imageUrl = _currentEvent.image;
    valueVariation = true;
  }

  _showImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            border: Border.all(width: 1, color: Colors.grey),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_imageUrl))),
      ),
    );
  }

  _forUser(String text) {
    if (text.isEmpty) {
      return null;
    } else {
      setState(() {
        forUser.add(text);
      });
    }
  }

  showForUser() {
    if (forUser.length <= 1) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: forUser.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 62),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange[300], width: 2),
                    color: Colors.blueGrey[300],
                    borderRadius: BorderRadius.circular(12)),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      forUser.removeAt(index);
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        forUser[index],
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                        icon: Icon(Icons.clear),
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            forUser.removeAt(index);
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: forUser.length = 0,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 62),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange[300], width: 2),
                    color: Colors.blueGrey[300],
                    borderRadius: BorderRadius.circular(12)),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      forUser.removeAt(index);
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        forUser[index],
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                        icon: Icon(Icons.clear),
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            forUser.removeAt(index);
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
  }

  void add() {
    setState(() {
      _count++;
    });
  }

  void minus() {
    setState(() {
      if (_count != 1) {
        _count--;
      }
    });
  }

  _showDialog() {
    if (forUser.isEmpty) {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              elevation: 1.0,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(22),
                      bottomLeft: Radius.circular(22))),
              content: Center(
                child: Text(
                  'Please select Choice',
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      address.clear();
                    });
                  },
                  child: Text('fuck ok'),
                ),
              ],
            );
          });
    } else {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              elevation: 1.0,
              title: Text('fuck'),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22))),
              content: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Full Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22.0)),
                          prefixIcon: Icon(Icons.person),
                        ),
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        controller: name,
                        validator: (val) {
                          if (val.isEmpty) {
                            return 'Please fill Full Name';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (val) {
                          _userJoin.userName = val;
                        },
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'phone',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22.0)),
                          prefixIcon: Icon(Icons.phone),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                        maxLines: 1,
                        maxLength: 10,
                        controller: phone,
                        validator: (val) {
                          if (val.isEmpty || val.length != 10) {
                            return 'Phone number must be 10';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (val) {
                          _userJoin.userPhone = val;
                        },
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Province',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22.0)),
                          prefixIcon: Icon(Icons.account_balance),
                        ),
                        keyboardType: TextInputType.multiline,
                        textAlign: TextAlign.justify,
                        maxLines: null,
                        controller: province,
                        validator: (val) {
                          if (val.isEmpty) {
                            return 'Province can\'t empty';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (val) {
                          _userJoin.userProvince = val;
                        },
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Address',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22.0)),
                          prefixIcon: Icon(Icons.home),
                        ),
                        keyboardType: TextInputType.multiline,
                        textAlign: TextAlign.justify,
                        maxLines: null,
                        controller: address,
                        validator: (val) {
                          if (val.isEmpty) {
                            return 'Address can\'t be empty';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (val) {
                          _userJoin.userAddress = val;
                        },
                      ),
                      SizedBox(
                        height: 4,
                      ),
                    ],
                  ),
                ),
              ),
              actions: <Widget>[
                Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          address.clear();
                          province.clear();
                          phone.clear();
                          name.clear();
                        });
                      },
                      child: Text('fuck Cancel'),
                    ),
                    FlatButton(
                      onPressed: () {
                        print('fuck you too');
                        if (_formKey.currentState.validate()) {
                          _onSubmit();
                        }
                      },
                      child: Text('ok'),
                    ),
                  ],
                ),
              ],
            );
          });
    }
  }

  _onSubmit() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    var evID = _currentEvent.eventId;
    print(evID);
    print(_userJoin.userAddress);
    var currentAmount = _currentEvent.currentAmount;
    var result = _count + int.parse(currentAmount);
    print(result.toString());
    var db = Firestore.instance;
    _userJoin.userVariations = forUser;
    var evRef = db.collection('events').document(evID);
    DocumentReference docRef = db.collection('events').document(evID);
    evRef.updateData({'currentAmount': result.toString()});
    evRef.collection('userJoin').document(user.uid).setData({
      'eventId': evID,
      'eventName': _currentEvent.eventName,
      'productName': _currentEvent.productName,
      'currentAmount':currentAmount,
      'category': _currentEvent.category,
      'image': _currentEvent.image,
      'userId': user.uid,
      'userName': _userJoin.userName,
      'userProvince': _userJoin.userProvince,
      'userPhone': _userJoin.userPhone,
      'userAddress': _userJoin.userAddress,
      'userEmail': user.email,
      'userPic': user.photoUrl,
      'userAmount' : _count,
      'userVariation': _userJoin.userVariations,
      'joinAt': Timestamp.now(),
    }).catchError((e) {
      print('fuck to join $e');
    });db.collection('users')
        .document(user.uid)
        .collection('userJoin')
        .add({
      'eventId': evID,
      'eventName': _currentEvent.eventName,
      'productName': _currentEvent.productName,
      'currentAmount':currentAmount,
      'category': _currentEvent.category,
      'image': _currentEvent.image,
      'userId': user.uid,
      'userName': _userJoin.userName,
      'userProvince': _userJoin.userProvince,
      'userPhone': _userJoin.userPhone,
      'userAddress': _userJoin.userAddress,
      'userEmail': user.email,
      'userPic': user.photoUrl,
      'userAmount' : _count,
      'userVariation': _userJoin.userVariations,
      'joinAt': Timestamp.now()
    }).catchError((e){
      print('user Fuck join $e');
    });
    DocumentReference useRef = Firestore.instance.collection('users').document(user.uid).collection('activity').document('userJoin');
    DocumentSnapshot snapshot = await docRef.get();
    List join = snapshot.data['join'];
    useRef.setData({
      'join':FieldValue.arrayUnion([evRef])
    },merge: true).then((val){
      Navigator.pop(context);
      setState(() {
        Navigator.pop(context);
        _count = 1;
        forUser.clear();
      });
    }).catchError((e){
      print('asdc $e');
    });
  }

  @override
  Widget build(BuildContext context) {
    EventNotifier eventNotifier = Provider.of<EventNotifier>(context);
    Future<void> _refreshEvent() async {
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
                  Text(
                    'Product : ${eventNotifier.currentEvent.productName}',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Category : ${eventNotifier.currentEvent.category}',
                    style: TextStyle(fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
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
                          child: Text(eventNotifier.currentEvent.eventDetail),
                        ),
                      ),
                    ),
                  ), //DETAIL PRODUCT
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                          'Quantity : ${eventNotifier.currentEvent.currentAmount}'),
                      Text(
                          'Shop Require : ${eventNotifier.currentEvent.shopAmount}'),
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
                      Text(
                          'Resposible by Shop : ${eventNotifier.currentEvent.shopEmail}'),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                          'Price per piece : ${eventNotifier.currentEvent.mediumPrice}'),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 12,
                          ),
                          Center(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Choice',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 22),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '** tap for choose',
                                  style: TextStyle(color: Colors.red),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                              ],
                            ),
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.symmetric(horizontal: 42),
                            itemCount:
                                eventNotifier.currentEvent.variations.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 4,
                                    crossAxisSpacing: 4),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 22),
                                child: InkWell(
                                  onTap: () => _forUser(eventNotifier
                                      .currentEvent.variations[index]
                                      .toString()),
                                  splashColor: Colors.red,
                                  focusColor: Colors.red,
                                  highlightColor: Colors.red,
                                  child: Container(
                                    child: Center(
                                        child: Text(
                                      eventNotifier
                                          .currentEvent.variations[index]
                                          .toString(),
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey[300],
                                        border: Border.all(
                                            color: Colors.deepOrange[300],
                                            width: 2),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  showForUser(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 6),
                        child: Text(
                          'Quantity',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[200]),
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
                            style: TextStyle(
                                color: Colors.blueGrey[300], fontSize: 18),
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
                      Text(
                          'Data Start : ${eventNotifier.currentEvent.createAt.toDate().toString()}'),
                      Text(
                          'Date End : ${eventNotifier.currentEvent.endAt.toString()}' ??
                              'Not'),
                    ],
                  ), //DATE
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
                              onPressed: () {
                                print('fuckkkkk');
                                _showDialog();
                              },
                              elevation: 1.1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                'JOIN',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
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
                              onPressed: () {},
                              elevation: 1.1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            color: Color(0xFF3B5998),
                          ),
                        ),
                      ],
                    ),
                  ), //Button JOIN
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
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          ' The Creator ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
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
                                  eventNotifier.currentEvent.userPic)),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: <Widget>[
                          Text(eventNotifier.currentEvent.userEmail),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Quantity : ${eventNotifier.currentEvent.userAmount.toString()}'),
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
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          ' Shop ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
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
                                eventNotifier.currentEvent.shopPic ?? avatar),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: <Widget>[
                          Text(eventNotifier.currentEvent.shopEmail ??
                              'No Shop offer'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(eventNotifier.currentEvent.shopAmount ??
                              'Quantity : 0'),
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
