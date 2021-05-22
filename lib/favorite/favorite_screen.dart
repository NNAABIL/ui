import 'package:flutter/material.dart';
import 'package:ui/shared/customAppbar.dart';

import 'favoriteItem_widget.dart';

class FavoriteScreen extends StatelessWidget {
  static const route = 'FavoriteScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: CustomAppbar(
          title: 'Favorite',
          function: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (_,i)=>FavoriteItem(), separatorBuilder: (_,i)=>Divider(), itemCount: 5),
    );
  }
}
