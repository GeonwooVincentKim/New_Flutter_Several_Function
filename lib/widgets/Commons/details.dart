import 'package:flutter/material.dart';
import 'package:flutter_app/shared/style.dart';


// class Details extends StatelessWidget{
//   final String label;
//   final String info;

//   Details({
//     @required this.label,
//     @required this.info,
//   });
  
//   @override
//   Widget build(BuildContext context) {
//     return RichText(
//       text: TextSpan(
//         children: <TextSpan>[
//           TextSpan(
//             text: "$label: ".toUpperCase(),
//             style: settingsContextFont
//           ),
//           TextSpan(
//             text: info,
//             style: settingsSubContextFont
//           ),
//         ]
//       )
//     );
//   }
// }
class Details extends StatelessWidget{
  final String contentsTitle;
  final String contentsInfo;

  Details({
    @required this.contentsTitle,
    @required this.contentsInfo
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: "$contentsTitle: ".toUpperCase(),
            style: settingsContextFont
          ),
          TextSpan(
            text: contentsInfo,
            style: settingsSubContextFont
          )
        ]
      )
    );
  }
}