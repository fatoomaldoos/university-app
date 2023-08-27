import 'package:get/get.dart';

import '../module/auth/add_teacher_certificate/add_teacher_certificate_controller.dart';



class AddCertificateBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<AddTeacherCertificateController>(() => AddTeacherCertificateController());
  }

}