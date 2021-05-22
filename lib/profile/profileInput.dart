import 'package:flutter/material.dart';

class ProfileInput extends StatelessWidget {
  final String hint;
  final String image;

  const ProfileInput({Key key, this.hint,this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          decoration: InputDecoration(
              hintStyle: TextStyle(fontFamily: 'Poppins',fontSize: 14,fontWeight: FontWeight.w400),
              hintText: hint,
              contentPadding: EdgeInsets.only(left: 90,bottom: 40),
              filled: true,
              fillColor:Color.fromRGBO(244, 244, 244, 1) ,
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(4.0),
                ),
              )
          ),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            image:DecorationImage(image: AssetImage(image)) ,
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(5))
          ),

        ),
      ],
    );
  }
}
