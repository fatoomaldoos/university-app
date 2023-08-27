import 'package:flutter/material.dart';
import 'package:flutter_app_test/module/auth/sign_up/sign_up_secreen.dart';
import 'package:flutter_app_test/module/auth/techer_certificate/teacher_certificate_secreen.dart';
import 'package:flutter_app_test/module/view_teacher/view_teacher_controller.dart';
import 'package:get/get.dart';
import '../auth/add_teacher_certificate/add_teacher_certificate_secreen.dart';
import '../auth/teacher_display/teacher_display_secreen.dart';
import '../auth/teacher_profile/teacher_profile_secreen.dart';
class ViewTeacherSecreen extends StatefulWidget {
  @override
  State<ViewTeacherSecreen> createState() => _ViewTeacherSecreenState();
}

class _ViewTeacherSecreenState extends State<ViewTeacherSecreen> {
  var id;
  ViewTeacherController viewTeacherController= Get.put(ViewTeacherController());


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
       title: Text('الأساتذة'),
      ),
      body:

      Center(
        child: Obx(
                () {
              if (viewTeacherController.isLoading.isTrue) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 2.0,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(SignUpSecreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.all(10),
                        //shadowColor:Colors.grey ,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset(
                                'lib/assets/images/register.jpg',
                                height: 10,
                                width: 120,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'إنشاء حساب',
                                style: TextStyle(
                                  fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(TeacherProfileSecreen(),
                          /* binding: TeacherProfileBinding(),*/
                          arguments: {
                            'teacherId':viewTeacherController.id,
                          });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.all(10),
                        //shadowColor:Colors.grey ,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset(
                                'lib/assets/images/profile.jpeg',
                                height: 10,
                                width: 120,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'الملف الشخصي',
                                style: TextStyle(
                                  fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      Get.to(TeacherCertificateSecreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.all(10),
                        //shadowColor:Colors.grey ,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset(
                                'lib/assets/images/my_certificate.jpeg',
                                height: 10,
                                width: 120,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'عرض شهاداتي',
                                style: TextStyle(
                                  fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      Get.to(TeacherDisplaySecreen(),);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.all(10),
                        //shadowColor:Colors.grey ,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset(
                                'lib/assets/images/teachers.jpeg',
                                height: 10,
                                width: 120,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'عرض الأساتذة',
                                style: TextStyle(
                                  fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('addteacher cert');
                      print(viewTeacherController.id);
                  Get.to(AddTeacherCertificateSecreen(),
                          arguments: {
                            'teacherId':viewTeacherController.id,
                          });

                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.all(10),
                        //shadowColor:Colors.grey ,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset(
                                'lib/assets/images/cert.jpg',
                                height: 10,
                                width: 120,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'إضافة شهادة',
                                style: TextStyle(
                                  fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.all(10),
                        //shadowColor:Colors.grey ,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset(
                                'lib/assets/images/experiance.png',
                                height: 10,
                                width: 120,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'إضافة خبرة',
                                style: TextStyle(
                                  fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.all(10),
                        //shadowColor:Colors.grey ,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset(
                                'lib/assets/images/t3.jpg',
                                height: 10,
                                width: 120,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'البحث عن مواد يمكن تدريسها',
                                style: TextStyle(
                                  fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.all(10),
                        //shadowColor:Colors.grey ,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset(
                                'lib/assets/images/exit.jpeg',
                                height: 10,
                                width: 120,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'تسجيل خروج',
                                style: TextStyle(
                                  fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],

              );
            }
        ),
      ),

    );
  }
}
