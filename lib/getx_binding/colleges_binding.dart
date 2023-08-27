import 'package:get/get.dart';

import '../module/colleges/colleges_secreen_controller.dart';

class CollegesBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<CollegesController>(() => CollegesController());
  }

}