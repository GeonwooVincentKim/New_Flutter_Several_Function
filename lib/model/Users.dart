import 'package:flutter/material.dart';


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
    @required this.photoURL,
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

  factory User.fromMap(Map<String, dynamic> data){
    return User(
      id: data['id'] ?? '',
      username: data['username'] ?? '',
      email: data['email'] ?? '',
      photoURL: data['imageURL'] ?? '',
      userAddress: data['Address'] ?? '',
    );
  }

  factory User.initialData(){
    return User(
      id: '',
      username: '',
      email: '',
      photoURL: '',
      userAddress: '',
    );
  }
}