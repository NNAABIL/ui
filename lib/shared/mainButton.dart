import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;

  MainButton({this.onPressed, this.text,this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: FlatButton(
        minWidth: double.infinity,
        padding: EdgeInsets.all(18),
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(6)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
            fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            fontSize: 14
          ),
        ),
      ),
    );
  }
}