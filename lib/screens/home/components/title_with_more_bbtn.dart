import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.press, //changed 10:17
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefualtPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomerUnderline(text: title),
          Spacer(),
          // FlatButton(
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   color: kPrimaryColor,
          //   onPressed: this.press(),
          //   child: Text(
          //     "More",
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
          TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              primary: Colors.green, // foreground
            ),
            onPressed: this.press(),
            child: Text(
              'More',
              style: TextStyle(color: Color.fromARGB(255, 4, 76, 6)),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomerUnderline extends StatelessWidget {
  //9:05 changed
  const TitleWithCustomerUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefualtPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefualtPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
