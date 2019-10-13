import 'package:flutter/material.dart';
import '../constants.dart';

class IconText extends StatelessWidget {
  final String text;
  final IconData faIcon;
  IconText({this.text, this.faIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          faIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
