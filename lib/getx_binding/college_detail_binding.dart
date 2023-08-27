import 'package:get/get.dart';

import '../module/colleges/colleges_details_secreen_controller.dart';

class CollegeBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<CollegeDetailController>(() => CollegeDetailController());
  }

}