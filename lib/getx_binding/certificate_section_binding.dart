import 'package:get/get.dart';

import '../module/certificate_sections/certificate_section_controller.dart';

class CertificateSectionBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<CertificateSectionController>(() => CertificateSectionController());
  }

}