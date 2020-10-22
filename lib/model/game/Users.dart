import 'package:flutter/material.dart';


class User{
  final String id;
  final String userName;
  final String email;
  // final String photoURL;
  List<String> photoURL;
  final String userAddress;
  
  User({
    this.id,
    // @required this.id
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
}