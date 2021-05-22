import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/bottomNav_screens/history_screen.dart';
import 'file:///C:/Users/Magic/AndroidStudioProjects/ui/lib/bottomNav_screens/jobs/jobs_screen.dart';
import 'package:ui/bottomNav_screens/message_screens.dart';
import 'package:ui/bottomNav_screens/notification_sceen.dart';
import 'package:ui/bottomNav_screens/settings_screen.dart';

abstract class AppStates{}

class AppInitState extends AppStates{}

class ChangeBottomNavState extends AppStates{}

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitState());

  AppCubit get (context)=> BlocProvider.of(context);

  int currentIndex = 0;

  changeCurrentIndex(index) {
    currentIndex = index;
    emit(ChangeBottomNavState());
  }

  List<Widget> bottomScreens = [
   JobsScreen(),
    HistoryScreen(),
    MessagesScreen(),
    NotificationScreen(),
    SettingsScreen(),
  ];




}
