import 'package:flutter/material.dart';
import 'package:flutter_app/data/user.dart';
import 'package:flutter_app/model/Users.dart';


class UserProvider with ChangeNotifier{
  User _userList = USER_BASIC_INFO;
  // User _userList = '{"": ""}';
  // User data = User(id: "8VxqWO9pRBTvpLGxFXquloo97X13", username: 'Vincent', email: "");
  // User _modifyUser;
  User user;

  User get userModify => User.from(_userList);
  // String get getUserID => _userList.id;
  String get getUserID => _userList.id;
  String get getUsername => _userList.username;
  String get getUserEmail => _userList.email;
  String get getUserImageURL => _userList.photoURL;
  String get getUserAddress => _userList.userAddress;

  void editUser(Map<String, dynamic> _formUserData){
    User editUser = User(
      id: _userList.id,
      // id: _formUserData['id'],
      // id: data['id'],
      username: _formUserData['username'],
      photoURL: _formUserData['imageURL'],
      email: _formUserData['email'],
      userAddress: _formUserData['Address']
    );
    _userList = editUser;
    notifyListeners();
  }
}