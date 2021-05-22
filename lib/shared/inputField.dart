import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final String hint;
  final int maxLines;

  const InputField({Key key, this.hint,this.maxLines}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(8, 195, 44, 1)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide( color: Color.fromRGBO(8, 195, 44, 1)),
        ),
        hintText: hint,
        hintStyle: TextStyle(fontFamily: 'Poppins',fontSize: 16,fontWeight: FontWeight.w400,color: Color.fromRGBO(66, 77, 89, 1)),
        fillColor: Color.fromRGBO(242, 247, 249, 1), filled: true,
        contentPadding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      ),
    );
  }

}
