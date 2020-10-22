import 'package:flutter/material.dart';

import '../../shared/style.dart';

class Label extends StatelessWidget {
  final String label;
  final Color labelColor;

  Label({@required this.label, this.labelColor = textAccentColor});

  @override
  Widget build(BuildContext context) {
    return Text(label, style: TextStyle(color: labelColor),);
  }
}