import 'package:flutter/material.dart';

// ignore: camel_case_types
// class divider extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return const Divider(
//       color: Colors.black,
//       height: 40,
//     );
//   }
// }

// ignore: camel_case_types
class transparent_divider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.transparent,
    );
  }
}

// class BottomDivider extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return const Divider(
//       color: Colors.transparent,
//       height: 40,
//     );
//   }
// }

class CustomDivider extends StatelessWidget{
  final Color color;
  final double height;

  CustomDivider({
    @required this.color,
    this.height = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      height: height,
    );
  }
}