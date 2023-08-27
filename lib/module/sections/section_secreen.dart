import 'package:flutter/material.dart';
import 'package:flutter_app_test/module/sections/section_controller.dart';
import 'package:flutter_app_test/module/sections/section_details_secreen.dart';
import 'package:get/get.dart';

import '../../getx_binding/section_single_controller.dart';

class SectionSecreen extends StatelessWidget {
  SectionController sectionController = Get.put(SectionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الأقسام'),
      ),
      body: Center(
        child: Obx(
                () {
              if (sectionController.isLoading.isTrue) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Directionality(
                textDirection: TextDirection.rtl,
                child: ListView(
                  children: List.generate(
                      sectionController.sectionList.length,
                          (index) {
                        return Card(
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  Get.to(SectionDetailsSecreen(),
                                      binding: SectionSingleBinding(),
                                      arguments: {
                                        'sectionId':
                                        '${sectionController.sectionList[index].secId}',
                                      });
                                },
                                title: Text(
                                  '${sectionController.sectionList[index]
                                      .secName}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontFamily: Theme
                                      .of(context)
                                      .textTheme
                                      .subtitle1!
                                      .fontFamily,
                                    color: Colors.black,
                                    fontSize: 17,),),
                              ),

                            ],
                          ),

                          elevation: 8,
                          shadowColor: Colors.green,
                          margin: EdgeInsets.all(20),
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                          ),
                        );


                        // buildCard(context,'${sectionController.sectionList[index].secName}');

                      }
                  ),
                ),
              );
            }
            ),
      ),


    );
  }

 /* Card buildCard(BuildContext context, String title) {
    return Card(
      child: Column(
        children: [

          ListTile(
            onTap: () {
              Get.to(SectionDetailsSecreen(),
               );
            },
            title: Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: Theme
                  .of(context)
                  .textTheme
                  .subtitle1!
                  .fontFamily, color: Colors.black, fontSize: 17,),),
          ),

        ],
      ),

      elevation: 8,
      shadowColor: Colors.green,
      margin: EdgeInsets.all(20),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white)
      ),
    );
  }
*/
}
