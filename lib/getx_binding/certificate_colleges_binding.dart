import 'package:get/get.dart';

import '../module/certificate_colleges/certificate_colleges_controller.dart';

class CertificateCollegesBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<CertificateCollegesController>(() => CertificateCollegesController());
  }

}