import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'certificate_colleges_controller.dart';
class CertificateCollegesSecreen extends StatelessWidget {
  CertificateCollegesController certificateCollegesController=Get.put(CertificateCollegesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الشهادات"),
      ),
      body:Center(
        child: Obx(
                () {
              if (certificateCollegesController.isLoading.isTrue) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }return Directionality(
                textDirection: TextDirection.rtl,
                child: ListView(
                  children: List.generate(
                      certificateCollegesController.certificateList.length,
                          (index) {
                        return buildCard(context, certificateCollegesController.certificateList[index].certificationType);
                      }
                  ),
                ),
              );

            }),
      ),
    );
  }
  Card buildCard(BuildContext context,String title) {
    return Card(
      child:Column(
        children: [

          ListTile(
            onTap: (){
              Get.to(CertificateCollegesController());
            },
            title: Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: Theme
                  .of(context)
                  .textTheme
                  .subtitle1!
                  .fontFamily,color: Colors.black,fontSize: 17,),),
          ),

        ],
      ),

      elevation: 8,
      shadowColor: Colors.green,
      margin: EdgeInsets.all(20),
      shape:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white)
      ),
    );
  }
}
