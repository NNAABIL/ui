
import 'package:flutter/material.dart';
import 'package:ui/profile/profileInput.dart';
import 'package:ui/shared/customAppbar.dart';

class ProfileScreen extends StatelessWidget {
  static const route ='ProfileScreen' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: CustomAppbar(title: 'Profile',
        function: (){
          Navigator.of(context).pop();
        },
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          Container(
            color: Color.fromRGBO(244, 244, 244, 1),
            height: 177,
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                  ),
                  title: Text(
                    'Ahmed Hossam',
                    style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  subtitle: Text(
                    'Real Estate Developer',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  trailing: CircleAvatar(
                    radius: 15,
                    backgroundColor: Color.fromRGBO(18, 195, 44, 1),
                    child: Icon(
                      Icons.star,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin:EdgeInsets.all(20) ,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '19',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(0, 148, 224, 1),
                                fontWeight: FontWeight.w700
                            ),

                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Open Jop',
                            style: TextStyle(color: Color.fromRGBO(132, 132, 132, 1),fontWeight:FontWeight.w400),
                          ),
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 1,
                        color: Colors.grey[300],
                      ),
                      Column(
                        children: [
                          Text(
                            '45',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(0, 148, 224, 1),
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Hire',
                            style: TextStyle(color: Color.fromRGBO(132, 132, 132, 1),fontWeight:FontWeight.w400),
                          ),
                        ],
                      ),
                      Container(height: 30, width: 1, color: Colors.grey[300]),
                      Column(
                        children: [
                          Text(
                            '23',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(0, 148, 224, 1),
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Contacted',
                            style: TextStyle(color: Color.fromRGBO(132, 132, 132, 1),fontWeight:FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                  ProfileInput(hint: 'Company Name',image: 'assets/images/cname.png',),
                  SizedBox(
                    height: 20,
                  ),
                ProfileInput(hint: 'Company Address',image: 'assets/images/caddress.png',),
                SizedBox(
                  height: 20,
                ),
                ProfileInput(hint: 'Company Number',image: 'assets/images/cnumber.png',),
                SizedBox(
                  height: 20,
                ),
                ProfileInput(hint: 'Company Email',image: 'assets/images/cemail.png',),
                SizedBox(
                  height: 20,
                ),
                ProfileInput(hint: 'Company Website ',image: 'assets/images/cwebsite.png',),
                SizedBox(
                  height: 20,
                ),
                ProfileInput(hint: 'Company Size',image: 'assets/images/csize.png',),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          )
        ],),
      ),
    );
  }
}
