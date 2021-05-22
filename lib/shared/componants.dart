import 'package:flutter/material.dart';

Widget buildColumn(txt, lbl) {
  return Padding(
    padding: const EdgeInsets.only(right: 30),
    child: Column(
      children: [
        Text(
          txt,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
              fontSize: 10,
              color: Color.fromRGBO(147, 147, 147, 1)),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          lbl,
          style: TextStyle(
            color: Colors.blue,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}



Widget buildButton(txt,color) {
  return MaterialButton(
    onPressed: () {},
    color: color,
    child: Text(txt,
        style: TextStyle(color: Colors.white, fontSize: 15,fontFamily: 'Inter',fontWeight: FontWeight.w600)),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  );
}


Widget buildTile(image, title, icon) {
  return Container(
    child: Row(
      children: [
        Image.asset(image, height: 30, width: 30, fit: BoxFit.cover),
        SizedBox(
          width: 15,
        ),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
        ),
        Spacer(),
        Icon(
          icon,
          color: Color.fromRGBO(71, 76, 82, 0.4),
          size: 15,
        ),
      ],
    ),
  );



}