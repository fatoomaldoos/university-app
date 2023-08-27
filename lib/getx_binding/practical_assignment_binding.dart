import 'package:get/get.dart';

import '../module/assignment/practical_assignment_controller.dart';

class PracticalAssignmentBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<PracticalAssignmentController>(() => PracticalAssignmentController());
  }

}