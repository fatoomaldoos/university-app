import 'package:flutter/material.dart';
import 'package:flutter_app_test/module/subjects/subject2_controller.dart';
import 'package:get/get.dart';

import '../../getx_binding/practical_assignment_binding.dart';
import '../../getx_binding/thiritical_assignment_class_binding.dart';
import '../assignment/practical_assignment_secreen.dart';
import '../assignment_class/thiritical_assignment_secreen.dart';

class SubjectClassDetailSecreen extends StatefulWidget {
  @override
  State<SubjectClassDetailSecreen> createState() =>
      SubjectClassDetailSecreenState();
}

class SubjectClassDetailSecreenState
    extends State<SubjectClassDetailSecreen> {
  Subject2Controller subjectController = Get.put(Subject2Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تكاليف المقررات"),
      ),
      body: Center(
        child: Obx(() {
          if (subjectController.isLoading.isTrue) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Column(children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                  'lib/assets/images/subjects.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              /////////////////////////////////////////////////
              Container(
                height: 70.0,
                margin: EdgeInsets.all(20),
                child: RaisedButton(
                  onPressed: () {
                    if(subjectController.subject!=null){
                    Get.to(ThiriticalAssignmentClassSereen(),
                        binding: ThiricalAssignmentClassBinding(),
                        arguments: {
                          'sid': subjectController.subject!.subjectId.toString(),
                        });}
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
                        "تكاليف النظري",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily:
                          Theme.of(context).textTheme.subtitle1!.fontFamily,
                          color: Colors.white,
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
                      if(subjectController.subject!=null)
                      {
                      Get.to(PracticalAssignmentSereen(),
                          binding: PracticalAssignmentBinding(),
                          arguments: {
                            'sid': subjectController.subject!.subjectId.toString(),
                          });
                      }
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
                          "تكاليف العملي",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily:
                            Theme.of(context).textTheme.subtitle1!.fontFamily,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ))
            ]),
          );
        }),
      ),

      /*   Center(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                  'lib/assets/images/subjects.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              /////////////////////////////////////////////////
              Container(
                height: 70.0,
                margin: EdgeInsets.all(20),
                child: RaisedButton(
                  onPressed: () {
                    Get.to(ThiriticalAssignmentSereen(),
                        binding: ThiricalAssignmentBinding(),
                        arguments: {
                          'subjectId':
                          subjectController.subject.subjectId,
                        }
                    );
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
                        "تكاليف النظري",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .fontFamily,
                          color: Colors.white,
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
                    //Get.to();
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
                        "تكاليف العملي",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .fontFamily,
                          color: Colors.white,
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

          ) ,
        )*/
    );
  }
/*
  Container buildButton(
      BuildContext context, String title, Object pageName, int id) {
    return Container(
      height: 70.0,
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        onPressed: () {
          Get.to(ThiriticalAssignmentSereen(),
              binding: ThiricalAssignmentBinding(),
              arguments: {
            'subjectId': id,
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
*/

}
