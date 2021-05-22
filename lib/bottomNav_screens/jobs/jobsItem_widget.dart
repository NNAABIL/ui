import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/shared/componants.dart';

class JobsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7, left: 20, right: 20, bottom: 7),
      child: Container(
        height: 220,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Senior Brand Designer',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Looking for someone to help create a signature strip something similar to the attachments below. It would be a strip of all the company logo, and the collaborative companies badges...",
              style: TextStyle(
                  fontSize: 12, color: Color.fromRGBO(147, 147, 147, 1)),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildColumn('Less Than', '10/week'),
                Container(
                  height: 30,
                  width: 1,
                  color: Colors.grey[300],
                ),
                buildColumn('More Than', '6 Applications'),
                Container(
                  height: 30,
                  width: 1,
                  color: Colors.grey[300],
                ),
                buildColumn('Posted', '2 h ago'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  child: buildButton('Close Jop',Color.fromRGBO(0, 160, 229, 1))
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 150,
                  child: buildButton('View Applicants',Color.fromRGBO(18, 195, 44, 1)),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider()
          ],
        ),
      ),
    );
  }




}
