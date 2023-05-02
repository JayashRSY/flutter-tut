
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'constants.dart';


class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonText, required this.onPressed});
  final String buttonText;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomContainer,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
