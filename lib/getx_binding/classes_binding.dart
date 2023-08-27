import 'package:get/get.dart';

import '../module/classes/classes_controller.dart';

class ClassesBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<ClassesController>(() => ClassesController());
  }

}