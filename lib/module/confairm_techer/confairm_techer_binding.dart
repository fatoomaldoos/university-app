import 'package:get/get.dart';
import 'confairm_techer_controller.dart';
class ConfairmTecherBinding implements Bindings
{
  @override
  void dependencies() {
    Get.put<ConfairmTecherController>(ConfairmTecherController());
  }

}