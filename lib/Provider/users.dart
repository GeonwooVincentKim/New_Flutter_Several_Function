import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/data/user.dart';
import 'package:flutter_app/model/game/Users.dart';


class UserProvider with ChangeNotifier{
  User _userList = USER_DUMMY_LIST;
  List<User> _userInfoList = [];
  User _userModify;

  List<User> get userInfoList {
    return [..._userInfoList];
  }

  User get userModify{
    return User.from(_userList);
  }

  void editUser(Map<String, dynamic> data){
    User editUser = User(
      id: _userList.id,
      userName: data['username'],
      photoURL: data['imageURL'],
      email: data['email'],
      userAddress: data['Address']
    );
    _userList = editUser;
    notifyListeners();
  }
  
  void changeUsername(User user){
    _userModify.userName = user.userName;
    notifyListeners();
  }

  void changeUserEmail(User user){
    _userModify.email = user.email;
    notifyListeners();
  }

  void changeUserAddress(User user){
    _userModify.userAddress = user.userAddress;
    notifyListeners();
  }

  void changeUserImageURL(User user){
    _userModify.photoURL = user.photoURL;
    notifyListeners();
  }

  setname(User user){
    _userModify.userName = user.userName;
    notifyListeners();
  }

  // void createUser(User userModify) {
  //   print("===== create user ======");

  //   if (userModify != null) {
  //     final User modifyUser = User.from(userModify);
  //     userModify.id ?? '';
  //     email = userModify.email ?? '';
  //     userName = userModify.userName ?? '';
  //     email = userModify.email ?? '';
  //   }
  //   notifyListeners();
  // }

  void changeUserInformation(User userModfiy){
    if (userModify != null){
      // User.fro = userModify.id ?? '';
      final User modifyUser = User.from(userModfiy);
      // modifyUser.id = modifyUser.id ?? 'test';
      // modifyUser.email = modifyUser.email ?? '';
      modifyUser.userName = modifyUser.userName ?? '';

    }
  }

  void changeUserInfo(User userModfiy, String userName, String email, String imageURL, String address){
    // userModfiy.userName = userName
    // userModfiy.email = email;
    // userModfiy.photoURL = imageURL;
    // userModfiy.userAddress = address;
    // notifyListeners();
    final int index = _userInfoList.indexWhere((userInfo) => userInfo.id == _userModify.id);
    if(index != 1){
      final User modifyUser = User.from(userModify);
      modifyUser.userName = userName;
      modifyUser.email = email;
      modifyUser.photoURL = imageURL;
      modifyUser.userAddress = address;
    }
    notifyListeners();
  }
}