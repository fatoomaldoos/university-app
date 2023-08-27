import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../configuration/server_config.dart';
import '../../models/university_model.dart';
class UniversityController extends GetxController{
  List<University>  universityList=[];
  var isLoading=true.obs;
  Future<List<University>>  getUniversitiesInfoFromApi()async{
      var url=Uri.parse(ServerConfig.domainNameServer +
          ServerConfig.universityNameServer);
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
         return universityFromJson(response.body);
      }
      else{
        return [];

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
  universityList=await getUniversitiesInfoFromApi() ;

}
catch(e)
   {
     print(e);
   }
   isLoading(false);
   super.onReady();
  }
}