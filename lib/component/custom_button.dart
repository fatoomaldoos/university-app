import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double height, width;
  final Color buttonColor;
  final String buttonName;
  final Function() onTapB;

  CustomButton(
      {
        required this.height,
        required this.width,
        required this.buttonColor,
        required this.buttonName,
        required this.onTapB()});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: this.height,
        width: this.width,
        decoration: BoxDecoration(
          color: this.buttonColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            this.buttonName,
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily),
          ),
        ),
      ),
      onTap: this.onTapB,
    );
  }
}
