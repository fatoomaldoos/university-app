import 'package:get/get.dart';

import '../module/universities/university_controller.dart';

class UniversityBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<UniversityController>(UniversityController());
  }

}