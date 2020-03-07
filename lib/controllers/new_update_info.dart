import 'package:assem_deal/customer/controlPageCustomer/main_customer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NewUpdateInfo {

  Future updateProfilePic(picUrl,context) {
    FirebaseAuth.instance.currentUser().then((user) {
      Firestore.instance.collection('users')
          .where('uid', isEqualTo: user.uid)
          .getDocuments().then((docs) {
        Firestore.instance.document('users/${docs.documents[0].documentID}')
            .updateData({'proFile': picUrl}).then((val){
           print('ok');
        }).then((user){
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => MainCustomer()),
              ModalRoute.withName('/'));
        }).catchError((e){
          print('can\'t change pages ${e}');
        });
      }).catchError((e) {
        print('users error ${e}');
      });
    }).catchError((e){
      print('update pic er ${e}');
    });
  }

}