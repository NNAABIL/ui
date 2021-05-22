import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui/shared/customAppbar.dart';
import 'package:ui/shared/inputField.dart';
import 'package:ui/shared/mainButton.dart';


class PostNewJopScreen extends StatelessWidget {
  static const route = 'PostNewJopScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
          child: CustomAppbar(title: 'Post New Jop',function: (){
            Navigator.of(context).pop();
          },)),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/helmet 1.png',
                    height: 60,
                    width: 60,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ManPower',
                          style: TextStyle(
                            fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 18, color: Color.fromRGBO(8, 195, 44, 1)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          color: Color.fromRGBO(8, 195, 44, 1),
                          width: 80,
                          height: 1,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Image.asset(
                    'assets/images/tr.png',
                    height: 60,
                    width: 60,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Equipment',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color.fromRGBO(209, 209, 209, 1)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          color: Color.fromRGBO(209, 209, 209, 1),
                          width: 80,
                          height: 1,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: title('Jop Title'),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InputField(hint: 'Senior UI / UX Designer',)
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: title('Jop Description'),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InputField(maxLines: 2,)
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: title('Jop Requirements'),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InputField(maxLines: 2,)
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        title('Working Hours'),
                        SizedBox(height: 10,),
                        InputField(hint: '08  /  Week',)
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        title('Work Term'),
                        SizedBox(height: 10,),
                        InputField(hint: '08  /  Month',)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: title('Location'),
            ),
            SizedBox(height: 10,),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InputField(hint: ',Doha, Qatar',)
            ),
            SizedBox(height: 15,),
            Padding(
                padding:const EdgeInsets.symmetric(horizontal: 20),
              child: MainButton(color: Color.fromRGBO(18, 195, 44, 1),
              onPressed: (){},
                text: 'Confirm & Post',
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

  Widget title(txt) {
    return Text(
      txt,
      style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600, fontSize: 16),
    );
  }
}
