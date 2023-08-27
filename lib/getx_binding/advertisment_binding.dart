import 'package:get/get.dart';

import '../module/advertisments_colleges/advertisment_controller.dart';

class AdvertismentBinding implements Bindings{
  @override
  void dependencies() {
    //Get.put<CollegesController>(CollegesController());
    Get.lazyPut<AdvertismentController>(() => AdvertismentController());
  }

}