import 'package:flutter/material.dart';
import 'package:flutter_app_test/module/universities/university_controller.dart';
import 'package:get/get.dart';

import '../../drawer.dart';
import '../../getx_binding/colleges_binding.dart';
import '../../tab_secreen_2.dart';
import '../colleges/colleges_secreen.dart';

class UniversitySecreen extends StatefulWidget {
  @override
  State<UniversitySecreen> createState() => _UniversitySecreenState();
}

class _UniversitySecreenState extends State<UniversitySecreen> {
  //UniversityController universityController=UniversityController();
  UniversityController universityController = Get.put(UniversityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الجامعات",
          style: TextStyle(
            fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
          ),
        ),
      ),//
        body:Center(
          child: Obx((){
            if(universityController.isLoading.isTrue)
           {
             return  Center(
               child:CircularProgressIndicator(),
             );
           } return Directionality(
              
             textDirection: TextDirection.rtl,
             child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 2.0,
                children: List.generate(
                    universityController.universityList.length,
                        (index) {
                          return InkWell(
                            onTap: () {
                              Get.to(
                                  TabSecreen2(),binding: CollegesBinding(),
                                arguments: {
                                'universityId':'${universityController.universityList[index].id}',
                                }
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.all(10),
                                //shadowColor:Colors.grey ,
                                elevation: 20,
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Image.asset(
                                        '${universityController.universityList[index].image}',
                                        height: 10,
                                        width: 120,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                          '${universityController.universityList[index].name}',
                                        style: TextStyle(
                                          fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                    }
                ),
              ),
           );
          }
          ),
        ),
      drawerScrimColor: Colors.black.withOpacity(0.7),
      drawer: MyDrawer(),
    );
  }


  InkWell buildUniversity(
      BuildContext context, String universityName, String imagUrl,int number) {
    return InkWell(
      onTap: () {
        Get.to(CollegesSecreen(),binding: CollegesBinding(),
         );
      },
      child: Padding(
        padding: const EdgeInsets.all(13.0),
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
                  imagUrl,
                  height: 10,
                  width: 120,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  universityName,
                  style: TextStyle(
                    fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*
 buildUniversity(context, "جامعة دمشق",
              "lib/assets/images/damascusUniversity.jpg"),
          buildUniversity(context, "جامعة حلب",
              "lib/assets/images/aleppoUniversity.jpeg"),
          buildUniversity(context, "جامعة تشرين",
              "lib/assets/images/tishreenUniversity.jpeg"),
          buildUniversity(context, "جامعة طرطوس",
              "lib/assets/images/tartousUniversity.jpeg"),
          buildUniversity(context, "جامعة البعث",
              "lib/assets/images/albathUniversity.jpeg"),
          buildUniversity(context, "جامعة حماة",
              "lib/assets/images/hamaUniversity.jpeg"),
          buildUniversity(context, "جامعة الجزيرة",
              "lib/assets/images/aljaziraUniversity.jpeg"),
          buildUniversity(context, "جامعة الفرات",
              "lib/assets/images/alphoratUniversity.jpg"),
        ],

*/
