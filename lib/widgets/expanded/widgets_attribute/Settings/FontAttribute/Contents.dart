import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Settings/FontAttribute/FontStyle.dart';

class LocalID extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: FontStyleContent(),
              children: <TextSpan>[
                TextSpan(text: "Local ID: "),
                TextSpan(text: "8VxqWO9pRBTvpLGxFXquloo97X13", style: FontStyleSubContent()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Email extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: FontStyleContent(),
              children: <TextSpan>[
                TextSpan(text: "Email: "),
                TextSpan(text: "test@test.com", style: FontStyleSubContent()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class Address extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      // Makes Column as Row.
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
            style: AddressStyleContent(),
            children: <TextSpan>[
              TextSpan(text: "Address: "),
              TextSpan(
                text: "Seoul, Gangnam-gu, Samseong 2(i)-dong, Seolleung-ro 112-gil, 87 명인빌딩",
                style: AddressStyleSubContent()
              ),
            ],
          ),
        ),
      ],
    );
  }
}