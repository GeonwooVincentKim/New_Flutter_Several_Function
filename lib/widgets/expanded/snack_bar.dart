import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String item){
  var snackBar = SnackBar(
    content: Text("You've just tapped $item"),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
          debugPrint("Performing dummy UNDO operation");
        }
    ),
  );

  Scaffold.of(context).showSnackBar(snackBar);
}

// Generate List-Item from 0 to 999.
// ignore: missing_return
List<String> getListElements(){
  var items = List<String>.generate(1000, (counter)=>"Item $counter");
  return items;
}


// Outer-Function.
// ignore: missing_return
Widget getListView(){
  var listItems = getListElements();
  var listView = ListView.builder(

    // Inner-Function.
    // Executor of all thousands Elements.
    //g ignore: missing_return
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          onTap: (){
            // debugPrint("${listItems[index]} was tapped");
            showSnackBar(context, listItems[index]);
          },
        );
      }
  );

  return listView;
}