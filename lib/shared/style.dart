import 'package:flutter/material.dart';

const double defaultPadding = 20;

const Color boxBackgroundColor = Color(0xff0f151b);
const Color appBarColor = Color(0xDD000000);
const Color backgroundColor = Color(0x1F000000);

const Color textAccentColor = Color(0xDD000000);
const Color textGreyColor = Color(0xff9b9d9e);
const Color linkColor = Color(0xff02a1ff);
const Color lineColor = Color(0xDD000000);
const Color textYellowColor = Color(0xffe1d819); 
const Color textInfoColor = Color(0x42000000);
// const Color textInfoColor = Color.fromRGBO(255, 255, 255, 0.7);

// Home
const mainFont = TextStyle(
    decoration: TextDecoration.none,
    fontSize: 25.0,
    fontFamily: "icomoon",
    fontWeight: FontWeight.w700,
    color: Colors.black87
);

const contextFont = TextStyle(
    color: Colors.black,
    fontFamily: "icomoon",
    fontSize: 15,
);

const subcontextFont = TextStyle(
    color: Colors.black26,
    fontFamily: "icomoon",
    fontSize: 12,
);

// Settings
const settingsMainFont = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold
);

const settingsContextFont = TextStyle(
    color: textAccentColor,
    fontFamily: "icomoon",  
    fontWeight: FontWeight.w700,
);

const settingsSubContextFont = TextStyle(
    color: textInfoColor,
    fontFamily: "icomoon",
    fontWeight: FontWeight.w700,
);

// Favorites
const favoritesFont = TextStyle(
  color: Colors.black,
  fontFamily: "icomoon",
  fontSize: 8
);