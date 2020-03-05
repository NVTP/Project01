import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NewUpdateInfo{
  newUser(user, context) {
    Firestore.instance.collection('users').add({
      'firstName': user.displayName,
      'lastName': user.lastName,
      'uid': user.uid,
      'gender': user.gender,
      'birthday': user.age,
      'email': user.email,
      'phone': user.phone,
      'profile': user.photoUrl,
    }).then((value) {
      print('newUser is Ok');
    }).catchError((e) {
      print(e);
    });
  }

  Future updateProfilePic(picUrl) {
    var userInfo = new UserUpdateInfo();
    userInfo.photoUrl = picUrl;
    FirebaseAuth.instance.currentUser().then((user) {
      user.updateProfile(userInfo);
    }).then((user) {
      FirebaseAuth.instance.currentUser().then((user) {
        user.updateProfile(userInfo);
        Firestore.instance.collection('users')
            .where('uid', isEqualTo: user.uid)
            .getDocuments().then((docs) {
          Firestore.instance.document('user/${docs.documents[0].documentID}')
              .updateData({'profile': picUrl}).then((val) {
            print('update profile');
          }).catchError((e){
            print('1${e}');
          });
        }).catchError((e){
          print('2${e}');
        });
      }).catchError((e){
        print('3${e}');
      });
    }).catchError((e){
      print('4${e}');
    });
  }

}