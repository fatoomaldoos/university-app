import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import '../../tab_secreen.dart';

class SplashSecreen extends StatefulWidget {

  @override
  State<SplashSecreen> createState() => _SplashSecreenState();
}

class _SplashSecreenState extends State<SplashSecreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            //decoration: gradientBackground,
            child: Image.asset('lib/assets/images/logo.jpg'),

          )
      ),
    );
  }

  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
//      Get.offNamed('/tabSecreen');
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    TabSecreen()
            )
        )
    );

  }
}
