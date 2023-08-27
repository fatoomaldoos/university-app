import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../configuration/server_config.dart';
import '../../models/thiritical_assignment.dart';

class ThiriticalAssignmentController extends GetxController{
  late List<ThiriticalAssignment>subjectList=[];
  var isLoading=true.obs;
  var id='';
  Future <List<ThiriticalAssignment>>getSubjectInfoFromApi()async{
    var url;
    if(id!=null){
      url=Uri.parse(ServerConfig.domainNameServer +
          ServerConfig.ThiriticalSubjectNameServer+id);
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
          return thiriticalAssignmentFromJson(response.body);
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
      id = Get.arguments['sid'];
      print(id);
      try{
        subjectList=await getSubjectInfoFromApi() ;
      }catch(e)
      {
        print(e);
      }

      isLoading(false);
      super.onReady();
    }
  }

}