import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../getx_binding/certificate_class_binding.dart';
import '../../getx_binding/class_subjects_binding.dart';
import '../certificate_classes/certificate_class_secreen.dart';
import '../subjects/subject_class_secreen.dart';
import 'classes_single_controller.dart';

class ClassDetailsSecreen extends StatelessWidget {
   ClassSingleController classSingleController = Get.put(ClassSingleController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تفاصيل القسم"),
      ),
      body: Center(
        child: Obx(
                () {
              if (classSingleController.isLoading.isTrue) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Directionality(
                textDirection: TextDirection.rtl,
                child: ListView(
                  children: [
                    ////المقررات
                    InkWell(
                      onTap:(){
                        Get.to(SubjectsClassSecreen(),
                            binding: SubjectsClassBinding(),
                            arguments: {
                              'classId':
                              '${classSingleController.id}',
                            }
                        );
                      } ,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 4,
                        margin: EdgeInsets.all(6),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  child: Image.asset("lib/assets/images/subjects.jpg",
                                    height: 250, width: double.infinity, fit: BoxFit.cover,),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                      children:[
                                        //  Icon(Icons.subject),
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Text("المقررات"),
                                        ),
                                      ]
                                  ),

                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                    //////الشعب//
                   /* InkWell(
                      onTap:(){
                        Get.to(ClassesSecreen(),
                            binding: ClassesBinding(),
                            arguments: {
                              'sectionId':
                              '${sectionSingleController.section.secId}',
                            }
                        );
                      } ,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 4,
                        margin: EdgeInsets.all(6),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  child: Image.asset("lib/assets/images/classes.jpg",
                                    height: 250, width: double.infinity, fit: BoxFit.cover,),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                      children:[
                                        //  Icon(Icons.subject),
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Text("الشعب"),
                                        ),
                                      ]
                                  ),

                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),*/

                    ////الشهادات///
                    InkWell(
                      onTap:(){
                        Get.to(CertificateClassSecreen(),
                            binding: CertificateClassBinding(),
                            arguments: {
                              'classId':
                              '${classSingleController.single_single.sectionId}',
                            }
                        );
                      } ,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 4,
                        margin: EdgeInsets.all(6),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  child: Image.asset("lib/assets/images/certificate.jpg",
                                    height: 250, width: double.infinity, fit: BoxFit.cover,),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                      children:[
                                        //  Icon(Icons.subject),
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Text("الشهادات"),
                                        ),
                                      ]
                                  ),

                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),





                  ]
                  ,
                ),
              );
            }
        ),
      ),



    );
  }

  InkWell buildInkWell(String imageUrl,String title,String pageName) {
    return InkWell(
      onTap:(){
        Get.toNamed(pageName);
      } ,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(6),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.asset(imageUrl,
                    height: 250, width: double.infinity, fit: BoxFit.cover,),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                      children:[
                        //  Icon(Icons.subject),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(title),
                        ),
                      ]
                  ),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
