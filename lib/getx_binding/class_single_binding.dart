import 'package:get/get.dart';

import '../module/classes/classes_single_controller.dart';

class ClassSingleBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<ClassSingleController>(() => ClassSingleController());
  }

}