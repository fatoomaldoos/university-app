import 'package:get/get.dart';

import '../module/auth/teacher_display/teacher_display_controller.dart';

class TeachersBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<TeachersController>(() => TeachersController());
  }

}