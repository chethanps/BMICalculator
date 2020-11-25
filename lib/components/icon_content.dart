import 'package:bmicalculator/constants.dart';
import 'package:flutter/cupertino.dart';


class IconContent extends StatelessWidget {
  final String genderText;
  final IconData iconData;

  IconContent({this.genderText, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
