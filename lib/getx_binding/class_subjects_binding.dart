import 'package:get/get.dart';

import '../module/subjects/subjects_class_controller.dart';

class SubjectsClassBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<SubjectClassController>(() => SubjectClassController());
  }

}