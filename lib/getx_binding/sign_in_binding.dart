import 'package:get/get.dart';

import '../module/auth/sign_in/sign_in_controller.dart';

class SignInBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }

}