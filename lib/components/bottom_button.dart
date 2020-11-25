
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final buttonTitle;
  final onTap;
  BottomButton({this.buttonTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(buttonTitle),
        onPressed: onTap,
      ),
      color: kBottomContainerColor,
      margin: EdgeInsets.only(top: 10.0),
      height: kBottomContainerHeight,
      width: double.infinity,
    );
  }
}
