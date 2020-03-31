import 'dart:io';
import 'package:assem_deal/model/event.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';


  Future uploadEventsAndImage(Events event, File localFile, Function eventUploaded)async{
    String fileName = basename(localFile.path);
    final StorageReference firebaseStorageRef = FirebaseStorage.instance.ref().child('EventPic/${fileName.toString()}');

    await firebaseStorageRef.putFile(localFile).onComplete.then((val){
      //TODO nothing
    }).catchError((e){
      print('someThing $e');
    });
    String url = await firebaseStorageRef.getDownloadURL();
    print('image event $url');
    _uploadEvent(event, eventUploaded,imageUrl: url);
    print('method upload ok');
  }

  _uploadEvent(Events events, Function eventUploaded, {String imageUrl})async{
    CollectionReference eventRef = Firestore.instance.collection('events');
    if(imageUrl != null){
      events.image = imageUrl;
    }
    events.createAt = Timestamp.now();
    DocumentReference docRef = await eventRef.add(events.toMap());
    events.eventId = docRef.documentID;
    await docRef.setData(events.toMap(),merge: true);

    eventUploaded(events);
  }
