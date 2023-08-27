import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../getx_binding/college_detail_binding.dart';
import 'colleges_details_secreen.dart';
import 'colleges_secreen_controller.dart';
class CollegesSecreen extends StatefulWidget {
  @override
  State<CollegesSecreen> createState() => _CollegesSecreenState();
}

class _CollegesSecreenState extends State<CollegesSecreen> {
CollegesController collegesController=Get.put(CollegesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(""),
      ),
      body:Center(
        child: Obx(
            () {
              if (collegesController.isLoading.isTrue) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }return Directionality(
                textDirection: TextDirection.rtl,
                child: ListView(
                  children: List.generate(
                      collegesController.collegesList.length,
                          (index) {
                        return Center(
                            child:InkWell(
                              onTap:(){
                                Get.to(CollegesDetailsSecreen(),
                                    binding: CollegeBinding(),
                                    arguments: {
                                      'collegeId':'${collegesController.collegesList[index].collId}',
                                    });
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
                                          borderRadius:BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15)) ,
                                          child: Image.asset('${collegesController.collegesList[index].collImage}',
                                            height: 250,width: double.infinity,fit: BoxFit.cover,),
                                        ),
                                        Positioned(
                                          bottom: 20,
                                          //left: 20,
                                          child:Container(
                                              width: 400,
                                              color: Colors.black54,
                                              padding: EdgeInsets.symmetric(vertical: 5,
                                                  horizontal: 20),
                                              child:Text('${collegesController.collegesList[index].collName}',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                  color: Colors.white,
                                                ),
                                                softWrap: true,
                                                overflow: TextOverflow.fade,
                                              )),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                              children:[
                                                Icon(Icons.location_on),
                                                Padding(
                                                  padding: const EdgeInsets.all(6.0),
                                                  child: Text('${collegesController.collegesList[index].collAddress}',),
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

                            );
                      }
                  ),
                ),
              );

            }),
      ),


    );
  }

  InkWell buildColleg(String collegeName,String imageUrl,String location) {
    return InkWell(
          onTap:(){
            Get.to(CollegesDetailsSecreen());
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
                      borderRadius:BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)) ,
                      child: Image.asset(imageUrl,
                        height: 250,width: double.infinity,fit: BoxFit.cover,),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child:Container(
                          width: 400,
                          color: Colors.black54,
                          padding: EdgeInsets.symmetric(vertical: 5,
                              horizontal: 20),
                          child:Text(collegeName,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                          children:[
                            Icon(Icons.location_on),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(location),
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
