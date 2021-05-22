import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/app_cubit.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var appCubit = BlocProvider.of<AppCubit>(context);
          return Scaffold(
            body: appCubit.bottomScreens[appCubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: appCubit.currentIndex,
              unselectedItemColor:Colors.grey ,
              selectedItemColor: Colors.blue,
              type: BottomNavigationBarType.fixed,
              onTap: (int index) {
                appCubit.changeCurrentIndex(index);
              },
              items: [
                BottomNavigationBarItem(icon: ImageIcon(
                  AssetImage("assets/images/job.png"),),label: 'JOBS'),
                BottomNavigationBarItem(icon: ImageIcon(
                  AssetImage("assets/images/history.png"),),label: 'HISTORY'),
                BottomNavigationBarItem(icon: ImageIcon(
                  AssetImage("assets/images/message.png"),),label: 'MESSAGES',),
                BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'NOTIFICATIONS'),
                BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'SETTINGS'),

              ],
            ),
          );
        },
      ),
    );
  }
}
