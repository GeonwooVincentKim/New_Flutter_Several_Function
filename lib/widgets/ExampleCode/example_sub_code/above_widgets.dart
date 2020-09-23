import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
text_above_widgets(){
  return Center(
    child: Column(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.amber,
            child: const Center(
              child: Text('Above'),
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
          height: 20,
          thickness: 5,
          indent: 20,
          endIndent: 0,
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: const Center(
              child: Text('Below'),
            ),
          ),
        ),
      ],
    ),
  );
}