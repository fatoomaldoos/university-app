import 'package:flutter/material.dart';
import 'package:flutter_app_test/module/auth/teacher_display/teacher_display_controller.dart';
import 'package:get/get.dart';

import '../../../getx_binding/teacher_profile_binding.dart';
import '../teacher_profile/teacher_profile_secreen.dart';
class TeacherDisplaySecreen extends StatelessWidget {
  TeachersController teachersController = Get.put(TeachersController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      //  backgroundColor: Color.fromARGB(255, 93, 220, 236),

        //  centerTitle: true,
        title: Center(
          child: Text("الأساتذة المشتركين"),
        ),
        //      leading: Center(child: Icon(Icons.person_add)
      ),
      body: Center(
        child: Obx(
                () {
              if (teachersController.isLoading.isTrue) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }else
              return ListView(
                children: List.generate(
                    teachersController.teachersList.length,
                        (index) {
                      return  Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Card(
                          elevation: 5,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(

                                        width: 60.0,
                                        height: 60.0,
                                        child:
                                        CircleAvatar(
                                          backgroundImage: AssetImage('${teachersController.teachersList[index].image}'),
                                        )

                                   //       AssetImage(teachersController.teachersList[index].image),

                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                          teachersController.teachersList[index].name,
                                          style: TextStyle(
                                            // color: Color.fromARGB(255, 93, 220, 236),
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.pink
                                    ),
                                    child: TextButton(
                                      child: Text(
                                        "عرض",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 247, 253, 253),
                                        ),
                                      ),
                                      onPressed: () {
                                        Get.to(TeacherProfileSecreen(),
                                            binding: TeacherProfileBinding(),
                                            arguments: {
                                              'teacherId':'${teachersController.teachersList[index].id}',
                                            });
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );


                      // buildCard(context,'${sectionController.sectionList[index].secName}');

                    }
                ),
              );
            }
        ),
      ),


      /*ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 5,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 55.0,
                            height: 55.0,
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage('lib/assets/images/medicin.jpeg'),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("fatoom",
                              style: TextStyle(
                                 // color: Color.fromARGB(255, 93, 220, 236),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pink
                        ),
                        child: TextButton(
                          child: Text(
                            "عرض",
                            style: TextStyle(
                              color: Color.fromARGB(255, 247, 253, 253),
                            ),
                          ),
                          onPressed: () {
                            Get.to(TeacherProfileSecreen());
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),*/
    );
  }
}
