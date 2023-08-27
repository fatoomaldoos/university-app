import 'package:get/get.dart';

import '../module/sections/section_controller.dart';

class SectionsBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<SectionController>(() => SectionController());
  }

}