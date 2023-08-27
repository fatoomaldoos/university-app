import 'package:flutter/material.dart';

import '../../component/custom_button.dart';
import '../../component/custom_text_field.dart';
import '../../constant.dart';

class LogInTecherSecreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: boxDecoration,
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(30),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("lib/assets/images/logo.png"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .25,
                  child: Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                ),
                Text(
                  "تسجيل الدخول",
                  style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).textTheme.subtitle1!.color,
                      fontFamily:
                          Theme.of(context).textTheme.subtitle1!.fontFamily),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .25,
                  child: Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  width: MediaQuery.of(context).size.width * .9,
                  height: 60,
                  hintText: "اسم المستخدم",
                  keyboard: TextInputType.text,
                  onChanged: (value){
                    print(value);
                  },

                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  width: MediaQuery.of(context).size.width * .9,
                  height: 60,
                  hintText: "اسم المستخدم",
                  keyboard: TextInputType.text,
                  onChanged: (value){
                    print(value);
                  },

                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                    height: 60,
                    width: MediaQuery.of(context).size.width * .9,
                    buttonColor: Colors.white,
                    buttonName: "تسجيل الدخول",
                    onTapB: (){
                      
                    },
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
