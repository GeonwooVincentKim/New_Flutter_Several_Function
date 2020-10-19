import 'package:flutter/material.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:provider/provider.dart';

// Image-Attributes that is below in the Detail-Page part.

class DetailImageAttribute extends StatefulWidget {
  final String image;
  final bool isFavorite;

  DetailImageAttribute({@required this.image, @required this.isFavorite});

  @override
  _DetailImageAttributeState createState() => _DetailImageAttributeState();
}

class _DetailImageAttributeState extends State<DetailImageAttribute> {
  String image;
  bool isFavorite = false;

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      isFavorite = widget.isFavorite;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Consumer<Products>(
      builder: (ctx, product, child) => (
          Stack(
            children: <Widget>[
            Container(
              width: screenWidth,
              child: Image.asset(
                widget.image,
                fit: BoxFit.fitWidth,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(
                  isFavorite ? IconMoon.istarfull : IconMoon.istar,
                  color: Colors.white,
                ),
                onPressed: () {
                  Provider.of<Products>(context, listen: false)
                      .changeFavorite(!isFavorite);
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                  print(isFavorite);
                }
              ),
            ),
          ]
        )
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  final double gameProgressBar;
  ProgressBar({@required this.gameProgressBar});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        LinearProgressIndicator(
            minHeight: 10,
            backgroundColor: Colors.grey,
            value: gameProgressBar / 100),
      ],
    );
  }
}