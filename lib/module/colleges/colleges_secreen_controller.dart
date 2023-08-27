import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../configuration/server_config.dart';
import '../../models/colleges_secreen_model.dart';

class CollegesController extends GetxController{

  List<Colleges>  collegesList=[];
  var isLoading=true.obs;
  var id='';

  Future<List<Colleges>>  getCollegesInfoFromApi()async{
    var url;
    if(id!=null){
       url=Uri.parse(ServerConfig.domainNameServer +
          ServerConfig.collegiesNameServer+id);
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
        var result = jsonDecode(response.body);
        print(result);
        print(result.runtimeType);
        print((response.body).runtimeType);
        return collegesFromJson(response.body);
      }
      else return [];
    }
    else{
      return [];
    }


  }

  @override
  onInit(){
    super.onInit();
    }

    @override
  void onReady()async {
    if(Get.arguments != null){
      id = Get.arguments['universityId'];
      print(id);
      try{
        collegesList=await getCollegesInfoFromApi() ;
      }catch(e){
        print(e);
      }

    isLoading(false);
    super.onReady();
  }
}
}