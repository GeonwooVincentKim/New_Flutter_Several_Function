import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/app_screens/discover/Discover.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/ExampleCode/body_old_code/body_list.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';

class DiscoverWidgetsList extends StatelessWidget{
  final List<Game> list;

  DiscoverWidgetsList({
    @required this.list
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) =>
          transparent_divider(),
      itemCount: itemList.length,
      itemBuilder: (context, index) => DiscoverBodyDetails()
    );
  }
}