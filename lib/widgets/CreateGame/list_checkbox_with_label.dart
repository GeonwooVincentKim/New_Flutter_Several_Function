import 'package:flutter/material.dart';
import 'package:flutter_app/shared/style.dart';


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
        currentList != null ?
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 3,
              mainAxisSpacing: defaultPadding,
              crossAxisSpacing: defaultPadding,
            ),
            itemCount: currentList.length,
            itemBuilder: (context, index){
              
            }
          ) : Container(),
      ],
    );
  }
}