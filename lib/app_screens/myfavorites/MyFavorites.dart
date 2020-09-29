import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/Details.dart';
import 'package:flutter_app/app_screens/settings/dialog/Dialog.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/myfavorites/MyFavoritesWidget.dart';

class MyFavoritesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("MY FAVORITES"),
        centerTitle: true,
      ),
      body: MyFavoritesPageBody(),
    );
  }
}

class MyFavoritesPageBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              crossAxisCount: 2,
              children: List.generate(100, (index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context){return DetailPage();})
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                          flex: 2,
                          child: FavoriteImage()
                      ),
                      Expanded(
                        flex: 1,
                        child: FavoriteText(),
                      ),
                    ],
                  ),
                );
                // return Column(
                //   children: [
                //     Expanded(
                //       flex: 2,
                //       child: FavoriteImage()
                //     ),
                //     Expanded(
                //       flex: 1,
                //       child: FavoriteText(),
                //     ),
                //   ],
                // );
                // // return Center(
                //   child: Text(
                //     'Item $index',
                //     style: Theme.of(context).textTheme.headline5,
                //   ),
                // );
              }),
            ),
          ),
        ],
      )
    );
  }

}