import 'package:flutter/material.dart';
import 'package:flutter_app_test/module/view_teacher/view_teacher_secreen.dart';
import 'package:flutter_app_test/native_service/secure_storage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'add_teacher_certificate_controller.dart';

class AddTeacherCertificateSecreen extends StatefulWidget {
  @override
  State<AddTeacherCertificateSecreen> createState() => AddTeacherCertificateSecreenState();
}

class AddTeacherCertificateSecreenState extends State<AddTeacherCertificateSecreen> {
  final _formKey = GlobalKey<FormState>();
  AddTeacherCertificateController addTeacherCertificateController =
  Get.put(AddTeacherCertificateController());

  SecureStorage secureStorage=SecureStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                  maxWidth: MediaQuery.of(context).size.width),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.white70,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "إضافة شهادة",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(90),
                                  topRight: Radius.circular(90))),
                          child:  Form(
                            key: _formKey,
                            child: ListView(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical:10),
                                  child: TextFormField(
                                    // The validator receives the text that the user has entered.
                                    onChanged: (value){
                                      addTeacherCertificateController.degree=value;
                                      },
                                    decoration: InputDecoration(
                                      labelText: "الدرجة",
                                      labelStyle: TextStyle(fontSize: 20,),
                                      hintText: "أدخل الدرجة",
                                      hintStyle: TextStyle(fontSize: 15),
                                      suffixIcon:Icon(TablerIcons.certificate)
                                    ),
                                    keyboardType: TextInputType.text,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'الرجاء إدخال الدرجة';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical:10),
                                  child: TextFormField(
                                    onChanged: (value){
                                      addTeacherCertificateController.description=value;
                                      },
                                    decoration: InputDecoration(
                                      labelText:"الوصف",
                                      labelStyle: TextStyle(
                                        fontSize:20,
                                      ),
                                      hintText: "أدخل الوصف",
                                      hintStyle: TextStyle(fontSize:15),
                                      suffixIcon: Icon(TablerIcons.details),
                                    ),
                                    keyboardType: TextInputType.text,

                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'الرجاء إدخال الوصف';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Center(
                                  /*child:Obx((){
                                    return Checkbox(

                                      value: signInController.checkBoxStatus.value,
                                      onChanged: (value){
                                        signInController.checkBoxStatus(value!);
                                        print(signInController.checkBoxStatus);
                                      },
                                    );
                                  }),*/

                                ),



                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 10),

                                  child: Container(
                                    constraints:
                                    BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                                    alignment: Alignment.center,
                                    child: ElevatedButton(

                                      onPressed: () {

                                        onClickAddTeacherCertificate();
                         /*               Get.to(ViewTeacherSecreen(),
                                            arguments: {
                                              'teacherId':addTeacherCertificateController.id,
                                            });
*/
                                      },
                                      child: const Text('إرسال'),
                                    ),


                                  ),
                                ),
                              ],
                            ),
                          )
                      )
                  )
                ],
              ),
            )),
      ),
    );
  }
  void onClickAddTeacherCertificate()async{
    String? token= await secureStorage.read('token');
    addTeacherCertificateController.token=token;
    EasyLoading.show(status: 'loading...');
   var test= await addTeacherCertificateController.AddCertificate(
        addTeacherCertificateController.degree,
        addTeacherCertificateController.description,
        );
    print('test is');
    print(test);
    if(test==true)
    {
      await EasyLoading.showSuccess('certificate added succesfully');
      Get.offNamed('/ViewTeacherSecreen',
          arguments: {
            'teacherId':addTeacherCertificateController.id,
          });

    }
    else{
      EasyLoading.showError('error on add certificate',
          duration: Duration(seconds: 10),dismissOnTap: true);

    }


  }


}


