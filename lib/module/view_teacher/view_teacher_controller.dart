import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../configuration/server_config.dart';
import '../../../models/teacher_single_model.dart';

class ViewTeacherController extends GetxController{
  late Teacher  teacher;
  var isLoading=true.obs;
  var id;
  @override
  onInit(){

    super.onInit();
  }

  Future <Teacher>getTeacherInfoFromApi()async{
    var url;
    if(id!=null){
      url=Uri.parse(ServerConfig.domainNameServer +
          ServerConfig.TeacherProfileNameServer+id);
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
          return Teacher.fromJson(jsonresponse);
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
  void onReady()async {
    if(Get.arguments != null){
      id =await Get.arguments['teacherId'];
      print('view  id');
      print(id);

      teacher=await getTeacherInfoFromApi() ;

      isLoading(false);
      super.onReady();
    }else
      print('teacherid equal null');
  }

}