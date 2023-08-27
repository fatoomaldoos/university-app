import 'package:get/get.dart';

import '../module/subjects/subjects_section_controller.dart';

class SubjectsSectionBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<SubjectSectionController>(() => SubjectSectionController());
  }

}