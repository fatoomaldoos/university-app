import 'package:get/get.dart';

import '../module/assignment/thiritical_assignment_controller.dart';

class ThiricalAssignmentClassBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<ThiriticalAssignmentController>(() => ThiriticalAssignmentController());
  }

}