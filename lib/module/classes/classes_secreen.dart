import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../getx_binding/class_single_binding.dart';
import 'classes_controller.dart';
import 'classes_details_secreen.dart';

class ClassesSecreen extends StatelessWidget {
  ClassesController classesController = Get.put(ClassesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الشعب'),
      ),
      body: Center(
        child: Obx(
                () {
              if (classesController.isLoading.isTrue) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Directionality(
                textDirection: TextDirection.rtl,
                child: ListView(
                  children: List.generate(
                      classesController.classesList.length,
                          (index) {
                        return Card(
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  Get.to(ClassDetailsSecreen(),
                                      binding: ClassSingleBinding(),
                                      arguments: {
                                        'classId':
                                        '${classesController.classesList[index].classId}',
                                      });
                                },
                                title: Text(
                                  '${classesController.classesList[index].className}',
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
