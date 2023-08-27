import 'package:get/get.dart';

import '../module/subjects/subject_controller.dart';

class SubjectBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<SubjectController>(() => SubjectController());
  }

}