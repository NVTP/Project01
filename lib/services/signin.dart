import 'package:assem_deal/customer/controlPageCustomer/main_customer.dart';
import 'package:assem_deal/shop/controlPageShop/main_shop.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Login {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Widget handleAuth() {}

  singInAuth(BuildContext context) {
    _auth.currentUser().then((user) {
      Firestore.instance
          .collection('test')
          .where('email', isEqualTo: user.email)
          .getDocuments()
          .then((doc) {
        if (doc.documents[0].exists) {
          if (doc.documents[0].data['role'] == 'user') {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MainCustomer()));
          } else {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MainShop()));
          }
        }
      });
    });
  }
}
