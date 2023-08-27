import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/module/auth/teacher_profile/teacher_profile_controller.dart';
import 'package:get/get.dart';

import '../teacher_edit_profile/edit_profile_secreen.dart';

class TeacherProfileSecreen extends StatefulWidget {
  @override
  State<TeacherProfileSecreen> createState() => TeachreProfileState();
}

class TeachreProfileState extends State<TeacherProfileSecreen> {
  TeacherProfileController teacherProfileController =
      Get.put(TeacherProfileController());

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Obx(() {
          if (teacherProfileController.isLoading.isTrue) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          else
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Card(
                    child: Column(
                      children: [
                        Container(
                            width: 390, //hon
                            height: 275, //hon
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    width: 400,
                                    height: 400,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        shape: BoxShape.rectangle,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              '${teacherProfileController.teacher.image}'),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 300.0),
                                  child: IconButton(
                                      onPressed: () {
                                        Get.to(EditProfileSecreen());
                                      },
                                      icon: Icon(Icons.edit)),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 4,
                                color: Colors.grey,
                              ),
                              color: Colors.black45,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0)),
                              shape: BoxShape.rectangle, //hon
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          title: Text(
                            teacherProfileController.teacher.name,
                            style: TextStyle(fontSize: 20),
                          ),
                          leading: Icon(
                            Icons.tag,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            teacherProfileController.teacher.email,
                            style: TextStyle(fontSize: 20),
                          ),
                          leading: Icon(
                            Icons.email,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            teacherProfileController.teacher.phoneNumber.toString(),
                            style: TextStyle(fontSize: 20),
                          ),
                          leading: Icon(
                            Icons.password,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          title: Text(
                            teacherProfileController.teacher.birthdate.toString(),
                            style: TextStyle(fontSize: 20),
                          ),
                          leading: Icon(
                            Icons.date_range_outlined,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            teacherProfileController.teacher.jobtype,
                            style: TextStyle(fontSize: 20),
                          ),
                          leading: Icon(
                            Icons.mobile_friendly,
                          ),
                        ), //image
                        ListTile(
                          title: Text(
                            teacherProfileController.teacher.address,
                            style: TextStyle(fontSize: 20),
                          ),
                          leading: Icon(
                            Icons.location_city,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
/*
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 30, left: 30, bottom: 30),
                        child: Container(
                          child: ListTile(
                            title: TextField(
                                decoration: InputDecoration(
                                    hintText: ("  الاسم العلمي للمادة:"))),
                            leading: Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 33, 236, 226),
                            ),
                          ),
                          */ /* Row(
                          children: [
                            TextFormField(hint("الاسم العلمي للمادة"),
                            Icon(
                              Icons.search,
                            ),
                          ],
                        )*/ /*
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(57.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                          ),
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              enabled: true,
                              icon: Icon(Icons.subject,
                                  color: Color.fromARGB(255, 33, 236, 226)),
                              labelText: "عرض المواد",
                              labelStyle: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 4, 39, 36)),
                            ),
                            items: courses.map((course) {
                              return DropdownMenuItem(
                                child: Text(
                                  course,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 189, 125, 96)),
                                ),
                                value: course,
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                selected = value as String;
                             Get.to(AssignmentCheckBox());
                              });
                            },
                            value: selected,
                            icon: Icon(Icons.arrow_drop_down,
                                color: Color.fromARGB(255, 189, 125, 96)),
                          ),
                        ),
                      ),
                    ],
                  ),*/
                      ),
                ],
              ),
            ),
          );
        })));
  }
}
