import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/details_attributes/DetailsBody.dart';
import 'package:flutter_app/app_screens/Body.dart';
import 'package:flutter_app/app_screens/settings/SideMenu.dart';

import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Discover/Widget.dart';

class Discover extends StatefulWidget{
  final void Function(int) onAddButtonTapped;
  Discover({Key key, this.title, this.onAddButtonTapped}): super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState()
    => _DiscoverState();
}

class _DiscoverState extends State<Discover>{
  String _title;
  // int _selectedPage = 1;
  List<Widget> pageList = List<Widget>();

  @override
  void initState() {
    pageList.add(Body());
    pageList.add(DiscoverPage());
    _title = 'DISCOVER';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(_title),
        centerTitle: true,
      ),
      // body: Body(),
      body: DiscoverBody(),
    );
  }
}

class DiscoverPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DiscoverBody(),
    );
  }
}

class DiscoverBody extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var itemList = [
      "Title_Details_1", "Title_Details_2", "Title_Details_3"
    ];
    return Center(
      child: Container(
        padding: EdgeInsets.only(right: 5.0, top: 20.0),
        alignment: Alignment.topLeft,
        color: Colors.black12,
        child: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) =>
                        transparent_divider(),
                    itemCount: itemList.length,
                    itemBuilder: (context, index) => DiscoverBodyDetails()
                  )
              ),
            ]
        ),
      ),
    );
  }
}


class DiscoverBodyDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 220,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context, MaterialPageRoute(builder: (context){return DetailPage();})
          );
        },
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: DiscoverUp(),
            ),
            Expanded(
              flex: 1,
              child: DiscoverDown(),
            ),
          ],
        ),
      )

    );
  }
}