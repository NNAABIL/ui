import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {

  final String title;
  final Function function;

  const CustomAppbar({Key key, this.title,this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 15,
                ),
                onPressed: function),
            Spacer(),
            Text(title,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
