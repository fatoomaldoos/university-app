import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../configuration/server_config.dart';
import '../../models/single_subject.dart';

class SubjectController extends GetxController{
  late Subject  subject;
  var isLoading=true.obs;
  var id='';
  Future <Subject>getSubjectInfoFromApi()async{
    var url;
    if(id!=null){
      url=Uri.parse(ServerConfig.domainNameServer +
          ServerConfig.subjectNameServer+id);
    }

    http.Response response=await http.get(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'accept': 'application/json; charset=UTF-8',
      },);
    if(response.statusCode==200)
    {
      if(response.body!=null) {
        print("yuyuyuyyupp");
        //data successfull
        // var result = jsonDecode(response.body);
        final jsonresponse;
        if(response.body.isNotEmpty) {
          jsonresponse=jsonDecode(response.body);
          print(jsonresponse);
          print(jsonresponse.runtimeType);
          print((response.body).runtimeType);
          return Subject.fromJson(jsonresponse);
        }
        // return collegesFromJson(response.body);
        else throw Exception('body is null'); ;
      }
      else throw Exception('body is null'); ;
    }
    else{
      throw Exception('Failed to load the data from url');
    }
  }


  @override
  onInit(){
    super.onInit();
  }

  @override
  void onReady()async {
    if(Get.arguments != null){
      print(id);
      id = Get.arguments['sid'];
      print(id);
      try{
        subject=await getSubjectInfoFromApi() ;

      }
      catch(e)
      {
        print(e);
      }
      isLoading(false);
      super.onReady();
    }
  }

}