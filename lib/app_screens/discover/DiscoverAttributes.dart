import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Discover/DiscoverLists.dart';

class DiscoverWidgetsList extends StatelessWidget{
  final List<Game> discoverList;

  DiscoverWidgetsList({
    @required this.discoverList
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) =>
          transparent_divider(),
      itemCount: discoverList.length,
      itemBuilder: (context, index){
        final item = discoverList[index];
        // DiscoverList(game: item);
        return DiscoverList();
      }
    );
  }
}