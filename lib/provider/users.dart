import 'package:flutter/material.dart';
import 'package:flutter_app/data/user.dart';
import 'package:flutter_app/model/Users.dart';


class UserProvider with ChangeNotifier{
  User _userList = USER_DUMMY_LIST;
  
  User get userModify => User.from(_userList);
  String get getUserID => _userList.id;
  String get getUsername => _userList.username;
  String get getUserEmail => _userList.email;
  String get getUserImageURL => _userList.photoURL;
  String get getUserAddress => _userList.userAddress;

  void editUser(Map<String, dynamic> data){
    User editUser = User(
      id: _userList.id,
      username: data['username'],
      photoURL: data['imageURL'],
      email: data['email'],
      userAddress: data['Address']
    );
    _userList = editUser;
    notifyListeners();
  }
}