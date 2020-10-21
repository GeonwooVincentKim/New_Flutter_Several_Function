import 'package:flutter/material.dart';


class GradientBox extends StatelessWidget{
  final Widget child;
  final EdgeInsets padding;
  final bool hasBorderRadius;
  final BorderRadius borderRadius;

  GradientBox({
    @required this.child,
    @required this.padding,
    this.hasBorderRadius = false,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: hasBorderRadius ?
          BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0)) 
          : BorderRadius.all(Radius.zero),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 0.8],
          colors: [
            Colors.black12,
            Color.fromRGBO(0, 0, 0, 0.7),
          ]
        )
      ),
    );
  }

}