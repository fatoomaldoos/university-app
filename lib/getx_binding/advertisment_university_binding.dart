import 'package:get/get.dart';

import '../module/advertisment_university/advertisment_university_controller.dart';

class AdvertismentUniversityBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<AdvertismentUniversityController>(() => AdvertismentUniversityController());
  }

}