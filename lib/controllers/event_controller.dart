import 'dart:io';
import 'package:assem_deal/model/event.dart';
import 'package:assem_deal/services/notifier/event_notifier.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';

getEvent(EventNotifier eventNotifier) async {
  QuerySnapshot snapshot = await Firestore.instance.collection('events')
      .orderBy('createAt', descending: true)
      .getDocuments();

  List<Events> _eventList = [];

  snapshot.documents.forEach((docs){
    Events events = Events.fromMap(docs.data);
    _eventList.add(events);
  });
  eventNotifier.eventList = _eventList;
}

uploadEventsAndImage(Events event, File localFile, Function eventUploaded,
    {String subID}) async {
  String fileName = basename(localFile.path);
  final StorageReference firebaseStorageRef =
  FirebaseStorage.instance.ref().child('EventPic/${fileName.toString()}');

  await firebaseStorageRef
      .putFile(localFile)
      .onComplete
      .then((val) {
    //TODO nothing
  }).catchError((e) {
    print('someThing $e');
  });
  String url = await firebaseStorageRef.getDownloadURL();
  String forSub = subID;
  print('image event $url');
  _uploadEvent(event, eventUploaded, imageUrl: url, subID: forSub);
  print('method upload ok');
}

_uploadEvent(Events events, Function eventUploaded,
    {String imageUrl, String subID}) async {
  CollectionReference eventRef = Firestore.instance.collection('events');
  if (imageUrl != null) {
    events.image = imageUrl;
  }
  events.createAt = Timestamp.now();
  DocumentReference docRef = await eventRef.add(events.toMap());
  events.eventId = docRef.documentID;
  await docRef.setData(events.toMap(), merge: true);
  DocumentReference ref = Firestore.instance.collection('events').document(events.eventId);

  FirebaseUser user = await FirebaseAuth.instance.currentUser();
  DocumentReference useRef = Firestore.instance.collection('users').document(user.uid).collection('activity').document('create');
  DocumentSnapshot snapshot = await useRef.get();
  List create = snapshot.data['create'];
  if (create.contains(events.eventId)==true) {
    useRef.updateData({
      'create' : FieldValue.arrayUnion([ref])
    }).catchError((e){
      print('first e $e');
    });
  }else{
    useRef.updateData({
      'create' : FieldValue.arrayRemove([ref])
    }).catchError((e){
      print('two e $e');
    });
  }

  eventUploaded(events);
}

