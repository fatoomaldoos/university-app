
//import 'dart:convert';
import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../configuration/server_config.dart';

class SignUpController extends GetxController {
  var myname;
  var myemail;
  var mypassword;
  var mybirthdate;
  var myaddress;
  var myimage;
  var myphone_number;
  var signUpStatus;
  var message;

  @override
  void onInit() {
    myname='';
    myemail='';
    mypassword='';
    myaddress='';
    myimage='';
    myphone_number='';
    signUpStatus=false;
    message='';
    super.onInit();
  }

  Future<bool> signUp(
      var name,
      var email,
      var password
      ,var date,
      var address,
      var image,
      var phone) async {
    var url = Uri.parse(ServerConfig.domainNameServer +
        ServerConfig.AddTeacherNameServer);

    http.Response response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'name': '${name}',
        'email': '${email}',
        'password': '${password}',
        'birthdate': '${date}',
        'address': '${address}',
         //'image': image,
        'phone_number': '${phone}',
      }),
    );
    print(response.statusCode);
    print(response.body);
    var jsondata = json.decode(response.body);
      if (response.statusCode == 201) {

        message=jsondata["msg"];
        if(message is List)
          {
            String temp='';
            for(String s in message)
              {
                temp+=s+'\n';
                message=temp;
              }
          }
        print(jsondata["msg"]);
    return true;
      }
      else if (response.statusCode==422)
        {
          message=jsondata["error"];
          if(message is List)
          {
            String temp='';
            for(String s in message)
            {
              temp+=s+'\n';
              message=temp;
            }
          }
          return false;

        }
      else if(response.statusCode==501)
        {
          message=jsondata["error"];
          if(message is List)
          {
            String temp='';
            for(String s in message)
            {
              temp+=s+'\n';
              message=temp;
            }
          }
          return false;
        }
      else {
        if(message is List)
        {
          String temp='';
          for(String s in message)
          {
            temp+=s+'\n';
            message=temp;
          }
        }
        message=jsondata["error"];

      //there is error during connecting to server,
      //status code might be 404 = url not found
    return false;
      }
  }
   /*
    print(myname);
    print(myemail);
    print(mypassword);
    print(myphone_number);
    print(mybirthdate);
    print(myaddress);
    print(myimage);
*/

  }
