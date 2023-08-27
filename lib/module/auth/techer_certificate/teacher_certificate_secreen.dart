import 'package:flutter/material.dart';
import 'package:get/get.dart';
class TeacherCertificateSecreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("شهاداتي"),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap:(){
              Get.to("");
            } ,
            child: Container(
              width:double.infinity ,
              height: 250,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                elevation: 4,
                margin: EdgeInsets.all(6),

              ),
            ),
          ),
        ],
      ),


    );
  }
}
