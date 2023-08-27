import 'package:flutter_app_test/module/auth/sign_up/sign_up_controller.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'dart:io';
class SignUpSecreen extends StatefulWidget {

  @override
  SignUpSecreenState createState() {
    return SignUpSecreenState();
  }
}

class SignUpSecreenState extends State<SignUpSecreen> {
  SignUpController signUpController =
  Get.put(SignUpController());

  final _formKey = GlobalKey<FormState>();
  var passVisability=true;
  XFile? image;
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field
    var imageFile;

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }
 var uploadimage; //variable for choosed file

  Future chooseImage() async {
    var choosedimage =await ImagePicker().getImage(source: ImageSource.gallery);
    if(choosedimage != null ){
      setState(() {
        uploadimage=File(choosedimage!.path);
          //imageFile=choosedimage.path;
        //signUpController.myimage=choosedimage.path.toString();
        signUpController.myimage=choosedimage;
      });
    }else{
      print("الصورة لم تحدد");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        //  centerTitle: true,
        title: Center(
          child: Text("إنشاء حساب "),
        ),
        //      leading: Center(child: Icon(Icons.person_add)
      ),
      body: SafeArea(
          child:
          Form(
            key: _formKey,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    // The validator receives the text that the user has entered.
                    onChanged: (value){
                      signUpController.myname=value;
                    },
                    decoration: InputDecoration(

                      labelText: "الاسم",
                      labelStyle: TextStyle(fontSize: 20,),
                      hintText: "أدخل الاسم",
                      hintStyle: TextStyle(fontSize: 15),
                      suffixIcon: Icon(Icons.account_circle),
                    ),
                    keyboardType: TextInputType.text,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'الرجاء إدخال الاسم';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    // The validator receives the text that the user has entered.
                    onChanged: (value){
                      signUpController.myemail=value;
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
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    onChanged: (value){
                      signUpController.mypassword=value;
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
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    // The validator receives the text that the user has entered.
                    onChanged: (value){
                      signUpController.myphone_number=value;
                    },
                    decoration: InputDecoration(
                      labelText: "الموبايل",
                      labelStyle: TextStyle(fontSize: 20),
                      hintText: "أدخل رقم الموبايل",
                      hintStyle: TextStyle(fontSize: 15),
                      suffixIcon: Icon(Icons.phone),
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'الرجاء إدخال رقم الموبايل';
                      }else if(value.length<10)
                      {
                        return'الرجاء إدخال 10 أرقام';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    // The validator receives the text that the user has entered.
                    onChanged: (value){
                      signUpController.myaddress=value;
                    },
                    decoration: InputDecoration(
                      labelText: "عنوان السكن",
                      labelStyle: TextStyle(fontSize: 20,),
                      hintText: "أدخل عنوان السكن",
                      hintStyle: TextStyle(fontSize: 15),
                      suffixIcon: Icon(Icons.place),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'الرجاء إدخال عنوان السكن';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
            padding: EdgeInsets.all(15),
            height:150,
            child:Center(
                child:TextField(
                  controller: dateinput, //editing controller of this TextField
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "أدخل التاريخ" ,
                    labelStyle: TextStyle(fontSize: 20),//label text of field
                  ),
                  readOnly: true,  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context, initialDate: DateTime.now(),
                        firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2102),
                    );


                    if(pickedDate != null ){
                      print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(formattedDate); //formatted date output using intl package =>  2021-03-16
                      //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                        dateinput.text = formattedDate; //set output date to TextField value.
                        signUpController.mybirthdate=formattedDate;
                      });
                    }else{
                      print("التاريخ لم يحدد");
                    }
                  },
                )
            ),
        ),
                Container(
                  constraints:
                  BoxConstraints(maxWidth: 450.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      await chooseImage();

                      //////////////////////////////
                    },
                    label: const Text('اختر صورة'),
                    icon: const Icon(Icons.image),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),

                  child: Container(
                    constraints:
                    BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {

                        onClickSignUp();

                  },
                      child: const Text('إرسال'),
                    ),
                  ),
                ),
              ],
            ),
          )


      ),
    );
  }
  void onClickSignUp()async{
    EasyLoading.show(status: 'loading...');
    signUpController.signUpStatus= await signUpController.signUp(
     signUpController.myname,
     signUpController.myemail,
     signUpController.mypassword,
     signUpController.mybirthdate,
     signUpController.myaddress,
     signUpController.myimage,
     signUpController.myphone_number
     );
    if(signUpController.signUpStatus)
      {
        EasyLoading.showSuccess('sign up done');
        Get.offNamed('/signInSecreen');
      }
    else
      {
        EasyLoading.showError(signUpController.message,duration: Duration(seconds: 10),dismissOnTap: true);
        print('error here');
      }

  }

}