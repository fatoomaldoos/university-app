import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../getx_binding/advertisment_binding.dart';
import '../../getx_binding/certificate_colleges_binding.dart';
import '../../getx_binding/section_binding.dart';
import '../advertisments_colleges/advertisment_secreen.dart';
import '../certificate_colleges/certificate_college_secreen.dart';
import '../sections/section_secreen.dart';
import 'colleges_details_secreen_controller.dart';

class CollegesDetailsSecreen extends StatefulWidget {
  @override
  State<CollegesDetailsSecreen> createState() => _CollegesDetailsSecreenState();
}

class _CollegesDetailsSecreenState extends State<CollegesDetailsSecreen> {
  CollegeDetailController collegeDetailController =
      Get.put(CollegeDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" الكلية"),
        ),
        body: Center(
          child: Obx(() {
            if (collegeDetailController.isLoading.isTrue) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    child: Image.asset(
                      collegeDetailController.college.collImage,
                      fit: BoxFit.cover,
                    ),
                  ),

                  /////////////////////////////////////////////////
                  Container(
                    height: 70.0,
                    margin: EdgeInsets.all(20),
                    child: RaisedButton(
                      onPressed: () {
                        Get.to(SectionSecreen(),
                            binding: SectionsBinding(),
                            arguments: {
                              'collegeId':
                                  '${collegeDetailController.college.collId}',
                            });
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.pink, Colors.pinkAccent],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "الأقسام",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .fontFamily,
                              color: Theme.of(context).textTheme.subtitle1!.color,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 70.0,
                    margin: EdgeInsets.all(20),
                    child: RaisedButton(
                      onPressed: () {
                        Get.to(AdvertismentCollegesSecreen(),
                            binding: AdvertismentBinding(),
                            arguments: {
                              'collegeId':
                                  '${collegeDetailController.college.collId}',
                            });
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.pink, Colors.pinkAccent],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "الإعلانات",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .fontFamily,
                              color: Theme.of(context).textTheme.subtitle1!.color,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 70.0,
                    margin: EdgeInsets.all(20),
                    child: RaisedButton(
                      onPressed: () {
                        Get.to(CertificateCollegesSecreen(),
                            binding: CertificateCollegesBinding(),
                            arguments: {
                              'collegeId':
                              '${collegeDetailController.college.collId}',
                            });
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.pink, Colors.pinkAccent],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Container(
                          constraints:
                          BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "الشهادات",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .fontFamily,
                              color: Theme.of(context).textTheme.subtitle1!.color,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),


                  /////////////////////////////////////////////////
               ///////////////////////////////////
               //   buildButton(context, "الأقسام", SectionSecreen(),
                 //     '${collegeDetailController.college.collId}'),
                 // buildButton(context, "الإعلانات", '/advertismentSecreen',
                  //    '${collegeDetailController.college.collId}'),
                  //buildButton(context, "الشهادات", '/certificateCollegesSecreen',
                   //   '${collegeDetailController.college.collId}'),
                ],
              ),
            );
          }),
        ));
  }

  Container buildButton(
      BuildContext context, String title, Object pageName, String id) {
    return Container(
      height: 70.0,
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        onPressed: () {
          Get.to(pageName, binding: SectionsBinding(), arguments: {
            'collegeId': id,
          });
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pink, Colors.pinkAccent],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
                color: Theme.of(context).textTheme.subtitle1!.color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
