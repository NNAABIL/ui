import 'package:flutter/material.dart';
import 'package:ui/bottomNav_screens/settings_screen.dart';
import 'package:ui/layout.dart';
import 'package:ui/postNewJob_Screen.dart';
import 'package:ui/profile/profile_screen.dart';

import 'favorite/favorite_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Layout(),
      routes: {
        PostNewJopScreen.route:(_)=>PostNewJopScreen(),
        FavoriteScreen.route:(_)=>FavoriteScreen(),
        ProfileScreen.route:(_)=> ProfileScreen(),
      },
    );
  }
}

