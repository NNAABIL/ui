import 'package:flutter/material.dart';
import 'package:ui/favorite/favorite_screen.dart';
import 'package:ui/postNewJob_Screen.dart';

import 'jobsItem_widget.dart';

class JobsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child:Container(
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(5, 159, 80, 1),
                Color.fromRGBO(0, 160, 229, 1),
              ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(PostNewJopScreen.route);
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 22.5,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Post New Jop',
                        style: TextStyle(color: Colors.white, fontSize: 19,fontWeight: FontWeight.w400,fontFamily: 'Inter'),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ),
        ) ,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 68,
              color: Color.fromRGBO(244, 244, 244, 1),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 14, bottom: 14, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                  width: 1.0),
                            ),
                            hintText: 'Search For Jobs',
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(209, 209, 209, 1),
                                fontSize: 12),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 12,
                              color: Color.fromRGBO(209, 209, 209, 1),
                            ),
                          suffix: ImageIcon(AssetImage('assets/images/filter.png'))
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(FavoriteScreen.route);
                      },
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(18, 195, 44, 1),
                        radius: 20,
                        child: Icon(
                          Icons.star,
                          size: 19,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,i)=>JobsItem(),itemCount: 5,)
          ],
        ),
      ),
    );
  }
}
