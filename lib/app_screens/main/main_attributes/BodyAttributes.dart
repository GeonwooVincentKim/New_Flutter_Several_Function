import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/details.dart';
import 'package:flutter_app/app_screens/details/details_attributes/DetailsBody.dart';
import 'package:flutter_app/app_screens/main/Body.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Main/MainLists.dart';

// ignore: non_constant_identifier_names
class InProcessList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var listUp = ["Title1", "Title2", "Title3"];
    return Expanded(
      child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) =>
              transparent_divider(),
          itemCount: listUp.length,
          itemBuilder: (context, index) {
            final item = listUp[index];
            return ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                  height: 67,
                  child: Dismissible(
                      key: Key(item),
                      onDismissed: (direction) {
                        // setState(() {
                        //   listUp.removeAt(index);
                        // });
                        Scaffold.of(context).showSnackBar(
                            SnackBar(content:
                            Text("$item dismissed")
                            )
                        );
                      },
                      background: Container(
                        color: Colors.amber,
                        alignment: Alignment(-0.9, 0.0),
                        child: Icon(IconMoon.ipencil, color: Colors.white, size: 30.0,),
                      ),
                      secondaryBackground: Container(
                        color: Colors.green,
                        alignment: Alignment(0.9, 0.0),
                        child: Icon(IconMoon.icheck2, color: Colors.white, size: 30.0,),
                      ),

                      child: ProcessingList()
                  ),
              ),

            );
          }
      ),
    );
  }
}

class CompletedList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var listDown = ["Title4", "Title5", "Title6", "Title7"];
    return Expanded(
      child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) =>
          new Divider(
            color: Colors.transparent,
          ),
          itemCount: listDown.length,
          itemBuilder: (context, index) {
            return Container(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context){return DetailPage();})
                  );
                },
                child: ProceededList(),
              ),
            );
          }
        // itemBuilder: (context, index) => ProceededList()
      ),
    );
  }
}