import 'package:flutter/material.dart';

const Color firstBackColor = Color(0xFFe44d69);
const Color secondBackColor = Color(0xFFe7637c);
const Color thirdBackColor = Color(0xFFee90a2);
const BoxDecoration boxDecoration = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [secondBackColor, firstBackColor, thirdBackColor]),
);
