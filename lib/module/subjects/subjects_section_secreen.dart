import 'package:flutter/material.dart';
import 'package:flutter_app_test/module/subjects/subject_section_detail_secreen.dart';
import 'package:flutter_app_test/module/subjects/subjects_section_controller.dart';
import 'package:get/get.dart';

import '../../getx_binding/subject_binding.dart';
class SubjectsSecreen extends StatelessWidget {
  SubjectSectionController subjectSectionController=Get.put(SubjectSectionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("المقررات"),
      ),
      body: Center(
        child: Obx(
                () {
              if (subjectSectionController.isLoading.isTrue) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Directionality(
                textDirection: TextDirection.rtl,
                child: ListView(
                  children: List.generate(
                      subjectSectionController.subjectList.length,
                          (index) {
                        return Container(
child: Container(
  height: 300,
  child: Card(
/*buildCard(
    context,

,
,

                          ),*/

    child: Column(
      children: [
        ListTile(
          onTap: () {
            Get.to(SubjectSecreenDetailSecreen(),
                  binding:SubjectBinding(),
                  arguments: {
                    'sid': subjectSectionController.subjectList[index].subjectId.toString()
                  }
            );
          },
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                width: 400,
                color: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(vertical: 5,
                    horizontal: 20),
                child:Center(
                  child: Text(subjectSectionController.subjectList[index].subjectName!,

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
        Text(subjectSectionController.subjectList[index].theoriticalAvailablity.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: Theme
                .of(context)
                .textTheme
                .subtitle1!
                .fontFamily, color: Colors.black, fontSize:15,),),
        SizedBox(height: 14,),
        Text(subjectSectionController.subjectList[index].practicalAvailablity.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: Theme
                .of(context)
                .textTheme
                .subtitle1!
                .fontFamily, color: Colors.black, fontSize:15,),),
        SizedBox(height: 14,),
        Text(subjectSectionController.subjectList[index].domainId.toString(),
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
)

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
  Container buildCard(BuildContext context, String? title, int? thiroticalAvaliability, int? practicalAvailiabilty, int? domain, int? id
      ) {
    return Container(
      height: 300,
      child: Card(

        child: Column(
          children: [
            ListTile(
              onTap: () {
                Get.to(SubjectSecreenDetailSecreen(),
                    binding:SubjectBinding(),
                    arguments: {
                      'subjectId': id,
                    }
                 );
              },
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 400,
                  color: Colors.pinkAccent,
                  padding: EdgeInsets.symmetric(vertical: 5,
                      horizontal: 20),
                  child:Center(
                    child: Text(title!,
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
            Text("{$thiroticalAvaliability}",
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: Theme
                  .of(context)
                  .textTheme
                  .subtitle1!
                  .fontFamily, color: Colors.black, fontSize:15,),),
            SizedBox(height: 14,),
            Text("${practicalAvailiabilty}",
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: Theme
                  .of(context)
                  .textTheme
                  .subtitle1!
                  .fontFamily, color: Colors.black, fontSize:15,),),
            SizedBox(height: 14,),
            Text("{$domain}",
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
}
