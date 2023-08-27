import 'package:get/get.dart';

import '../module/auth/teacher_profile/teacher_profile_controller.dart';

class TeacherProfileBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<TeacherProfileController>(() => TeacherProfileController());
  }

}