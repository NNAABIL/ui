import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/profile/profile_screen.dart';
import 'package:ui/shared/componants.dart';
import 'package:ui/shared/customAppbar.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: CustomAppbar(
          title: 'Setting',
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: double.infinity,
              color: Color.fromRGBO(244, 244, 244, 1),
              child: ListTile(
                onTap: (){
                  Navigator.of(context).pushNamed(ProfileScreen.route);
                },
                leading: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.blue,
                ),
                title: Text(
                  'Ahmed Mohamed Salem',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  'asalem@icloud.com',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account Settings',
                    style: TextStyle(fontFamily: 'Poppins',fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    color: Color.fromRGBO(235, 235, 235, 1),
                    width: double.infinity,
                    height: 1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  buildTile('assets/images/pass.png', 'Change password',
                      Icons.arrow_forward_ios),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image.asset('assets/images/notif.png',
                            height: 30, width: 30, fit: BoxFit.cover),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Push notifications',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                        Spacer(),
                        CupertinoSwitch(
                          value: true,
                          onChanged: (value) {},
                          activeColor: Color.fromRGBO(18, 195, 44, 1),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    color: Color.fromRGBO(235, 235, 235, 1),
                    width: double.infinity,
                    height: 1,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  buildTile('assets/images/pay.png', 'Payment',
                      Icons.arrow_forward_ios),
                  SizedBox(
                    height: 25,
                  ),
                  buildTile('assets/images/about.png', 'About us',
                      Icons.arrow_forward_ios),
                  SizedBox(
                    height: 25,
                  ),
                  buildTile('assets/images/privacy.png', 'Privacy policy',
                      Icons.arrow_forward_ios),
                  SizedBox(
                    height: 25,
                  ),
                  buildTile('assets/images/tirms.png', 'Terms and conditions',
                      Icons.arrow_forward_ios),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    color: Color.fromRGBO(235, 235, 235, 1),
                    width: double.infinity,
                    height: 1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Sign out',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 160, 229, 1)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
