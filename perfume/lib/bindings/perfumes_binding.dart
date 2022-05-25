

import 'package:get/get.dart';
import 'package:perfume/controllers/perfumes_controller.dart';

class PerfumesBindings implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => PerfumesController());
  }

}
