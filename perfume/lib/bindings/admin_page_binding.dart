
import 'package:get/get.dart';
import 'package:perfume/controllers/admin_page_controller.dart';

class AdminPageBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AdminPageController());
    // TODO: implement dependencies
  }

}
