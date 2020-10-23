import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/Users.dart';


class UserProvider with ChangeNotifier{
  List<User> _userInfoList = [];
  User _userModify;

  List<User> get userInfoList {
    return [..._userInfoList];
  }

  User get userModify{
    return User.from(_userModify);
  }

  void changeUserInfo(User userModfiy, String userName, String email, String imageURL, String address){
    // userModfiy.userName = userName;
    // userModfiy.email = email;
    // userModfiy.photoURL = imageURL;
    // userModfiy.userAddress = address;
    // notifyListeners();
    final int index = _userInfoList.indexWhere((userInfo) => userInfo.id == _userModify.id);
    if(index != 1){
      final User modifyUser = User.from(userModify);
      modifyUser.userName = userName;
      // modifyUser.email = 
    }
  }
}