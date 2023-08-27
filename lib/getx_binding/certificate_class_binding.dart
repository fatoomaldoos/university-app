import 'package:get/get.dart';

import '../module/certificate_classes/certificate_class_controller.dart';

class CertificateClassBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<CertificateClassesController>(() => CertificateClassesController());
  }

}