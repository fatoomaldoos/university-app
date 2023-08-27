import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'certificate_section_controller.dart';

class CertificateSectionSecreen extends StatelessWidget {
  CertificateSectionController certificateSectionController=Get.put(CertificateSectionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الشهادات"),
      ),
      body:Center(
        child: Obx(
                () {
              if (certificateSectionController.isLoading.isTrue) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }return Directionality(
                textDirection: TextDirection.rtl,
                child: ListView(
                  children: List.generate(
                      certificateSectionController.certificateList.length,
                          (index) {
                        return buildCard(context, certificateSectionController.certificateList[index].certificationType);
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
        /*    onTap: (){
              Get.to(CertificateSectionController());
            },
        */    title: Text(title,
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
