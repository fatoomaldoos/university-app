import 'package:flutter/material.dart';
import 'package:flutter_app_test/module/auth/sign_in/sign_in_controller.dart';
import 'package:flutter_app_test/module/view_teacher/view_teacher_secreen.dart';
import 'package:flutter_app_test/native_service/secure_storage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../getx_binding/view_teacher_binding.dart';
import '../sign_up/sign_up_secreen.dart';
class SignInSecreen extends StatefulWidget {
  @override
  State<SignInSecreen> createState() => _SignInSecreenState();
}

class _SignInSecreenState extends State<SignInSecreen> {
  final _formKey = GlobalKey<FormState>();
  var passVisability=true;
  SignInController signInController =
  Get.put(SignInController());


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
                              "تسجيل دخول",
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
                                      signInController.myemail=value;
                                },
                                    decoration: InputDecoration(
                                      labelText: "الايميل",
                                      labelStyle: TextStyle(fontSize: 20,),
                                      hintText: "أدخل الإيميل",
                                      hintStyle: TextStyle(fontSize: 15),
                                      suffixIcon: Icon(Icons.email),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'الرجاء إدخال الايميل';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical:10),
                                  child: TextFormField(
                                    onChanged: (value){
                                      signInController.mypassword=value;
                                },
                                    decoration: InputDecoration(
                                      labelText:"كلمةالمرور",
                                      labelStyle: TextStyle(
                                        fontSize:20,
                                      ),
                                      hintText: "أدخل كلمة المرور",
                                      hintStyle: TextStyle(fontSize:15),
                                      suffixIcon:IconButton(
                                        icon: Icon(passVisability?Icons.visibility:Icons.visibility_off),
                                        onPressed: ( (){
                                          setState(() { passVisability=!passVisability; });
                                        }
                                        ),
                                      ),
                                    ),
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: passVisability,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'الرجاء إدخال كلمة المرور';
                                      }else if(value.length<6)
                                      {
                                        return'الرجاء إدخال 6 محارف على الأقل';
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


                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                           Text("البقاء بحالة تسجيل الدخول"),
                                          Obx((){
                                            return Checkbox(
                                              value: signInController.checkBoxStatus.value,
                                              onChanged: (value)async{
                                                signInController.checkBoxStatus(value!);
                                                print("check box satatus");
                                                print(signInController.checkBoxStatus);
                                                SecureStorage secureStorage=SecureStorage();
                                                String? test=await secureStorage.read('token');
                                                print('secur token');
                                        print('secure token $test');

                                              },
                                            );
                                          }),

                                        ],
                                      ),
                                  ),



                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 10),

                                  child: Container(
                                    constraints:
                                    BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                                    alignment: Alignment.center,
                                    child: ElevatedButton(

                                        onPressed: () {

                                          onClickSignIn();



                                          //Get.to(SignInSecreen());
                                        },
                                        child: const Text('إرسال'),
                                      ),


                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 30),

                                  child: Container(
                                    constraints:
                                    BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                                    alignment: Alignment.center,
                                    child: Row(

                                      children: [
                                        Text("هل لديك حساب؟",style:
                                      TextStyle(
                                        fontSize: 15,

                                      ),),
                                        TextButton(

                                          onPressed: () {

                                          Get.to(SignUpSecreen());
                                            },



                                          child: const Text('إنشاء حساب',
                                            style:TextStyle(
                                              fontSize: 15,
                                              color: Colors.pinkAccent,
                                            ),),
                                        ),
                                      ],
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
  void onClickSignIn()async{
    EasyLoading.show(status: 'loading...');
    bool accept=false;
    accept= await signInController.signIn(
        signInController.myemail,
        signInController.mypassword,
        signInController.checkBoxStatus.value
        );
    if(accept==true)
    {
      await EasyLoading.showSuccess('sign up done');
      Get.to(ViewTeacherSecreen(),
          binding: ViewTeacherBinding(),
          arguments: {
            'teacherId':'${signInController.id}',
          });
      print('signin secreen idd');
      print(signInController.id);
    }
    else{
      EasyLoading.showError(signInController.message,duration: Duration(seconds: 10),dismissOnTap: true);
      print('error here');
    }

  }


}


