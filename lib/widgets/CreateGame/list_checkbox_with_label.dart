import 'package:flutter/material.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/CreateGame/create_game_title.dart';


class ListCheckBox extends StatelessWidget{
  final List<dynamic> currentList;
  final List<dynamic> listSelected;

  ListCheckBox({
    @required this.currentList,
    @required this.listSelected
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding),
        currentList != null ?
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 3,
              mainAxisSpacing: defaultPadding,
              crossAxisSpacing: defaultPadding,
            ),
            itemCount: currentList.length,
            itemBuilder: (context, index){
              return CreateGameTile(
                contents: currentList[index].name,
                id: currentList[index].id,
                isSelected: listSelected,
              );
            }
          ) : Container(),
          SizedBox(height: defaultPadding),
      ],
    );
  }
}