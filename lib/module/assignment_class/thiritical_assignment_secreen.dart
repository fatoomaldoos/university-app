import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../assignment/thiritical_assignment_controller.dart';
class ThiriticalAssignmentClassSereen extends StatelessWidget {
  ThiriticalAssignmentController thiriticalAssignmentController=Get.put(ThiriticalAssignmentController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("تكاليف النظري"),
      ),
      body: Center(
        child: Obx(
                () {
              if (thiriticalAssignmentController.isLoading.isTrue) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView(
                children: List.generate(
                    thiriticalAssignmentController.subjectList.length,
                        (index) {
                      return Container(
                        child:buildCard(context,
thiriticalAssignmentController.subjectList[index].type,
thiriticalAssignmentController.subjectList[index].description,
                        ),

                      );


                      // buildCard(context,'${sectionController.sectionList[index].secName}');

                    }
                ),
              );
            }
        ),
      ),
    );
  }
}
Container buildCard(
    BuildContext context,
    String? type,
    String? description) {
  return Container(
    height: 300,
    child: Card(
      child: Column(
        children: [
          ListTile(
            onTap: () {},
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 400,
                color: Colors.blueGrey,
                padding: EdgeInsets.symmetric(vertical: 5,
                    horizontal: 20),
                child:Center(
                  child: Text(type!,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 14,),
          Text(description!,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: Theme
                .of(context)
                .textTheme
                .subtitle1!
                .fontFamily, color: Colors.black, fontSize:15,),),
         ],
      ),

      elevation: 8,
      shadowColor: Colors.green,
      margin: EdgeInsets.all(20),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white)
      ),
    ),
  );
}