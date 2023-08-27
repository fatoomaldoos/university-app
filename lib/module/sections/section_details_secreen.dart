import 'package:flutter/material.dart';
import 'package:flutter_app_test/module/sections/section_single_controller.dart';
import 'package:get/get.dart';

import '../../getx_binding/certificate_section_binding.dart';
import '../../getx_binding/classes_binding.dart';
import '../../getx_binding/subjects_section_binding.dart';
import '../certificate_sections/cerificate_section_secreen.dart';
import '../classes/classes_secreen.dart';
import '../subjects/subjects_section_secreen.dart';

class SectionDetailsSecreen extends StatelessWidget {
  SectionSingleController sectionSingleController = Get.put(SectionSingleController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تفاصيل الأقسام"),
      ),
      body: Center(
        child: Obx(
                () {
              if (sectionSingleController.isLoading.isTrue) {
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
                        Get.to(SubjectsSecreen(),
            binding: SubjectsSectionBinding(),
            arguments: {
                'sectionId':
                '${sectionSingleController.id}',
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
                    InkWell(
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
                    ),

                    ////الشهادات///
                    InkWell(
                      onTap:(){
                        Get.to(CertificateSectionSecreen(),
                          binding: CertificateSectionBinding(),
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
