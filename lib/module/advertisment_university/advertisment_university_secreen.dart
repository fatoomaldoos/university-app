import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'advertisment_university_controller.dart';

class AdvertismentUniversitySecreen extends StatelessWidget {
  AdvertismentUniversityController advertismentController=Get.put(AdvertismentUniversityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الإعلانات"),
      ),
      body:Center(
        child: Obx(
                () {
              if (advertismentController.isLoading.isTrue) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }return ListView(
                children: List.generate(
                    advertismentController.advertismentList.length,
                        (index) {
                      return buildCard(context, advertismentController.advertismentList[index].content);
                    }
                ),
              );

            }),
      ),


    );
  }
  Card buildCard(BuildContext context,String? title) {
    return Card(
      child:Column(
        children: [

          ListTile(
            /*onTap: (){
              Get.to(AdvertismentCollegesSecreen());
            },*/
            title: Text(title!,
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
