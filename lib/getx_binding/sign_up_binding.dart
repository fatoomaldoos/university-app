import 'package:get/get.dart';

import '../module/auth/sign_up/sign_up_controller.dart';

class SignUpBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }

}