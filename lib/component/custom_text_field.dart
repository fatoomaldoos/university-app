import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double height,width;
  final String hintText;
  final TextInputType keyboard;
  final Function(String)onChanged;

  CustomTextField({
  required this.width,
  required this.height,
  required this.hintText,
  required this.keyboard,
  required this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height:height,
      decoration: BoxDecoration(
          color: Colors.white.withAlpha(20),
          border: Border(
            top:
            BorderSide(width: 2, color: Colors.white.withAlpha(30)),
            bottom:
            BorderSide(width: 2, color: Colors.white.withAlpha(30)),
            left:
            BorderSide(width: 2, color: Colors.white.withAlpha(30)),
            right:
            BorderSide(width: 2, color: Colors.white.withAlpha(30)),
          )),
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.white,
        keyboardType: keyboard,
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily:
            Theme.of(context).textTheme.subtitle1!.fontFamily),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily:
                Theme.of(context).textTheme.subtitle1!.fontFamily),
            contentPadding: EdgeInsets.fromLTRB(20,8 , 8, 8)


        ),
      ),
    );
  }
}
