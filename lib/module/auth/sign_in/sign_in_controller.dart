import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../configuration/server_config.dart';
import '../../../configuration/user_information.dart';
import '../../../native_service/secure_storage.dart';

class SignInController extends GetxController {
  var message;
  var token;
  var myemail;
  var mypassword;
  var id;
  var signUpStatus=false;
  var checkBoxStatus=false.obs;

  Future<bool> signIn(
      var email,
      var password,
      var checkbox
      ) async {
    var url = Uri.parse(ServerConfig.domainNameServer +
        ServerConfig.logInTeacherNameServer);

      http.Response response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'email': '${email}',
          'password': '${password}',
        }),
      );
      print(response.statusCode);
      print(response.body);
      var jsondata = json.decode(response.body);
      if (response.statusCode == 200) {
        token=jsondata["accessToken"];
        id=jsondata["id"];
        UserInformation.USER_TOKEN=token;
        print("test");
        print("the id in sign in is:");
        print(id);
        print(UserInformation.USER_TOKEN);
        if(checkbox)
          {
            //save token to de vice
            SecureStorage secureStorage=SecureStorage();
            await secureStorage.save('token',UserInformation.USER_TOKEN );
           String? test= await secureStorage.read('token');
           print('token in secure storage');
           print(test);
      }
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
    /* if(response.statusCode==200){
      print('\n');
      print('sucessful');
    }else if(response.statusCode==422){
      print('422');
    }else{
      print('error');
    }
*/
    //print(myemail);
   // print(mypassword);


  }