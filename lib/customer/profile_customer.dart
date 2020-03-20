import 'package:assem_deal/customer/choice/customer_status.dart';
import 'package:assem_deal/customer/choice/update_profile_customer.dart';
import 'package:assem_deal/services/login_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileCustomer extends StatefulWidget {
  @override
  _ProfileCustomerState createState() => _ProfileCustomerState();
}

class _ProfileCustomerState extends State<ProfileCustomer> {
  final loginServices = new Login();
  var proFile;
  var inStead = 'https://firebasestorage.googleapis.com/v0/b/login-ce9de.appspot.com/o/user%2Fimages.png?alt=media&token=bbc9397d-f425-4834-82f1-5e6855b4a171';


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAuth.instance.currentUser().then((user){
      setState(() {
       proFile = user.photoUrl;
      });
    }).catchError((e){
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          proFile == null ? inStead : proFile
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
//  @override
//  Widget build(BuildContext context) {
//    return StreamBuilder<QuerySnapshot>(
//      stream: Firestore.instance.collection('users').snapshots(),
//      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
//        if(snapshot.hasError)
//          return Text('Error: ${snapshot.error}');
//        switch (snapshot.connectionState){
//          case ConnectionState.waiting: return Center(child: CircularProgressIndicator());
//          default:
//            return ListView(
//              shrinkWrap: true,
//              children: snapshot.data.documents.map((DocumentSnapshot document){
//                return SingleChildScrollView(
//                  child: Column(
//                    children: <Widget>[
//                      Container(
//                        width: 150.0,
//                        height: 150.0,
//                        decoration: BoxDecoration(
//                          shape: BoxShape.circle,
//                          image: DecorationImage(
//                            fit: BoxFit.cover,
//                              image: NetworkImage(
//                                  document['proFile'] == null ? proFile : document['proFile']
//                              )
//                          ),
//                        ),
//                      ),
//                      Text(document['role']),
//                      Text(document['email']),
//                    ],
//                  ),
//                );
//              }).toList(),
//            );
//        }
//      },
//    );
//  }
}
