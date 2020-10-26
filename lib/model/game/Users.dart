import 'package:flutter/material.dart';


class User{
  String id;
  String userName;
  String email;
  // final String photoURL;
  // List<String> photoURL;
  String photoURL;
  String userAddress;
  
  User({
    // this.id,
    @required this.id,
    @required this.userName,
    @required this.email,
    @required this.photoURL,
    @required this.userAddress
  });

  factory User.from(User user){
    return User(
      id: user.id ?? '',
      userName: user.userName ?? '',
      email: user.email ?? '',
      // photoURL: user.photoURL ?? [],
      photoURL: user.photoURL ?? '',
      userAddress: user.userAddress ?? '',
    );
  }
  // void createUser(User user) {
  //   print("===== create user ======");

  //   if (user != null) {
  //     id = user.id ?? '';
  //     email = user.email ?? '';
  //     userName = user.userName ?? '';
  //     email = user.email ?? '';
  //   }
  //   notifyListeners();
  // }
}