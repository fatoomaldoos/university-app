import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../configuration/server_config.dart';
import '../../../models/Teachers_model.dart';
class TeachersController extends GetxController{
  late List<Teachers>  teachersList=[];
  var isLoading=true.obs;
  Future<List<Teachers>>  getteachersInfoFromApi()async{
    var url=Uri.parse(ServerConfig.domainNameServer +
        ServerConfig.TeachersNameServer);
    http.Response response=await http.get(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'accept': 'application/json; charset=UTF-8',
      },);
    if(response.statusCode==200)
    {
      print("yuyuyuyyupp");
      //data successfull
      var result=jsonDecode(response.body);
      print(result);
      print(result.runtimeType);
      print((response.body).runtimeType);
      // universityList=
      // print(universityList[0].name);
      return teachersFromJson(response.body);
    }
    else{
    throw Exception('body is null');

    //
    }


  }

  @override
  void onInit(){
    super.onInit();
  }

  @override
  void onReady()async {
    try{
      if(getteachersInfoFromApi()!=null)
      teachersList=await getteachersInfoFromApi() ;

    }
    catch(e)
    {
      print(e);
    }
    isLoading(false);
    super.onReady();
  }
}