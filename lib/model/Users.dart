import 'dart:convert';

import 'package:flutter/material.dart';
// part 'user.dart';


class User{
  final String id;
  final String username;
  final String email;
  // final String photoURL;
  // List<String> photoURL;
  final String photoURL;
  final String userAddress;
  
  User({
    // this.id,
    @required this.id,
    @required this.username,
    @required this.email,
    this.photoURL,

    @required this.userAddress
  });

  factory User.from(User user){
    return User(
      id: user.id ?? '',
      username: user.username ?? '',
      email: user.email ?? '',
      // photoURL: user.photoURL ?? [],
      photoURL: user.photoURL ?? '',
      userAddress: user.userAddress ?? '',
    );
  }

  // factory User.fromJSON(Map<String, dynamic> _formUserData) => jsonDecode(_formUserData);
  // _formUserData equals to variable named 'json'.
  factory User.fromJson(Map<String, dynamic> _formUserData){
    return User(
      id: _formUserData['id'] ?? '',
      username: _formUserData['username'] ?? '',
      email: _formUserData['email'] ?? '',
      photoURL: _formUserData['imageURL'] ?? '',
      userAddress: _formUserData['Address'] ?? '',
    );
  }

  // factory User.fromMap(Map<String, dynamic> _formUserData){
  //   return User(
  //     id: _formUserData['id'] ?? '',
  //     username: _formUserData['username'] ?? '',
  //     email: _formUserData['email'] ?? '',
  //     photoURL: _formUserData['imageURL'] ?? '',
  //     userAddress: _formUserData['Address'] ?? '',
  //   );
  // }

  factory User.initialData(){
    return User(
      id: '1',
      username: 'Vincent',
      email: 'test@example.com',
      photoURL: 'https://cdn.pixabay.com/photo/2016/07/01/23/16/amusement-park-1492099_960_720.jpg',
      userAddress: 'Seoul, Gangnam-gu',
    );
  }
}