import 'package:flutter_app_test/module/view_teacher/view_teacher_controller.dart';
import 'package:get/get.dart';

class ViewTeacherBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<ViewTeacherController>(ViewTeacherController());
  }

}