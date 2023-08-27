import 'package:get/get.dart';

import 'native_service/secure_storage.dart';
class TabSecreenController extends GetxController{
  late SecureStorage secureStorage=SecureStorage();
  String? token;
  @override
  void onInit() async{
    print('on init');
    token=await secureStorage.read('token');
    print('token from tab controller');
    print(token);
    //checkToken();
    super.onInit();
  }


  @override
  void onReady() {
    print('on ready');
    super.onReady();
  }

  Future <bool?>checkToken()async{
    String? token=await secureStorage.read('token');
    String page;
    if(token!=null)
      {
       // page='/TeacherSecreenView';
        //Get.offNamed('/TeacherSecreenView');
        return true;
      }
    else{
      //page='/signInSecreen';
      //Get.offNamed('/signInSecreen');
      return false;
    }

  }

}