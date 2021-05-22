import 'package:flutter/material.dart';

class FavoriteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.blue,
              ),
              title: Text(
                'Ahmed Hossam',
                style: TextStyle(fontFamily: 'Inter',fontWeight: FontWeight.w700, fontSize: 17),
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Real Estate Developer',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text('Doha, Qatar',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Inter',fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(124, 124, 124, 1))),
                ],
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Looking for someone to help create a signature strip something similar to the attachments below. It would be a strip of all the company logo, and the collaborative companies badges...",
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(147, 147, 147, 1)),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildWidget('19', 'Applied'),
                  Container(
                    height: 30,
                    width: 1,
                    color: Colors.grey[300],
                  ),
                  buildWidget('45', 'Hire'),
                  Container(height: 30, width: 1, color: Colors.grey[300]),
                  buildWidget('48', 'Contacted'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildWidget(txt,lbl){
    return Column(
      children: [
        Text(
          txt,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: Color.fromRGBO(0, 148, 224, 1),
              fontWeight: FontWeight.w700
          ),

        ),
        SizedBox(
          height: 5,
        ),
        Text(
          lbl,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 13,
              color: Color.fromRGBO(132, 132, 132, 1),fontWeight:FontWeight.w400),
        ),
      ],
    );
  }
}
