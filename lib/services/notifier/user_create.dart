import 'dart:collection';

import 'package:assem_deal/model/user_create.dart';
import 'package:assem_deal/services/notifier/event_notifier.dart';
import 'package:flutter/material.dart';

class UserCreateNotifier extends ChangeNotifier{
  List<UserCreate> _userCreateList = [];
  UserCreate _userCreate;

  UnmodifiableListView<UserCreate> get userCreateList => UnmodifiableListView(_userCreateList);

  set userCreateList(List<UserCreate> userCreateList){
    _userCreateList = userCreateList;
    notifyListeners();
  }

  UserCreate get userCreateCurrent=> _userCreate;

  set userCreateCurrent(UserCreate userCreate){
    _userCreate = userCreate;
    notifyListeners();
  }
}