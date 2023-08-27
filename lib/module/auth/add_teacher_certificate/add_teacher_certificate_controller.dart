import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../configuration/server_config.dart';
import '../../../configuration/user_information.dart';
import '../../../native_service/secure_storage.dart';

class AddTeacherCertificateController extends GetxController {
  var message;
  var token;
  var degree;
  var description;
  var id;
  var myId;
  var addCertificateStatus=false;
  SecureStorage secureStorage=SecureStorage();
String? myToken;


  Future<bool> AddCertificate(var degree, var description,) async {
    myToken=await secureStorage.read('token');
    var url;
    if(Get.arguments != null){
      id = Get.arguments['teacherId'];
      print('id from add cert');
      print(id);
      print('token from add cert');
      print(token);
      url = Uri.parse(ServerConfig.domainNameServer +
          ServerConfig.addTeacherCertificate+id);
    }
    http.Response response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer'+myToken! ,
      },
      body: jsonEncode({
        'degree': '${degree}',
        'description': '${description}',
      }),
    );
    print(response.statusCode);
    print(response.body);
    var jsondata = json.decode(response.body) ;
    if (response.statusCode == 200) {
      print('statues 200 in addcert');
      if(response.body.isNotEmpty)
        print(response.body);

      //myId: (jsondata["teacher_id"] as List).map((i) => myId.fromJson(i)).toList();
      myId=jsondata["teacher_id"];

      print("test");
      print("the id  in is:");
      print(id);

      message=jsondata["msg"];
      print(message);
      /*
      if(message is List)
      {
        String temp='';
        for(String s in message)
        {
          temp+=s+'\n';
          message=temp;
        }
        print(message);
      }
else{
        print(jsondata["msg"]);

      }
*/
      return true;

    }

    else if (response.statusCode==422)
    {
/*
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
*/
      return false;
    }
    else if(response.statusCode==501)
    {
/*
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
*/
      return false;
    }
    else
     {
/*
      if(message is List)
      {
        String temp='';
        for(String s in message)
        {
          temp+=s+'\n';
          message=temp;
        }
      }
      message=jsondata["msg"];
*/
      //there is error during connecting to server,
      //status code might be 404 = url not found
      return false;
    }

  }

  @override
  void onReady()async {

      super.onReady();
    }
  }

