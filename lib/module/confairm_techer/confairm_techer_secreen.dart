import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../component/custom_button.dart';
import '../../constant.dart';
import '../login_techer/login_techer_secreen.dart';

class ConfairmTecherSecreen extends StatelessWidget {
   void f1(){
    print('sign up');
  }
  void f2(){
    print('sign in');
    Get.to(LogInTecherSecreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: boxDecoration,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("lib/assets/images/logo.png"),
              ),
            ),
            Text(
              "الرجاء تأكيد المعلومات",
              style: TextStyle(
              fontSize: 20,
                  color: Theme.of(context).textTheme.subtitle1!.color,
                  fontFamily:
                      Theme.of(context).textTheme.subtitle1!.fontFamily),
            ),
            SizedBox(height: 50,),
            CustomButton(
                height: 60,
                width: MediaQuery.of(context).size.width*.9,
                buttonColor: Colors.white,
                buttonName: "إنشاء حساب",
              onTapB: f1
            ),
            SizedBox(height: 50,),
            CustomButton(
                height: 60,
                width: MediaQuery.of(context).size.width*.9,
                buttonColor: Colors.white,
                buttonName: "تسجيل الدخول",
              onTapB:f2
            ),
          ],
        ),
      )),
    );
  }
}
