import 'package:flutter/material.dart';
import 'package:flutter_app/data/games.dart';
import 'package:flutter_app/model/game/platform.dart';


class PlatformProvider with ChangeNotifier{
  List<PlatformG> _platformItems = DUMMY_PLATFORMS.toList();
  List<PlatformG> get listPlatforms {return [..._platformItems];}
}
