import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../tab_secreen_controller.dart';

class TabSecreenBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<TabSecreenController>(() => TabSecreenController());
  }

}