import 'package:get/get.dart';

import '../module/sections/section_single_controller.dart';

class SectionSingleBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<SectionSingleController>(() => SectionSingleController());
  }

}