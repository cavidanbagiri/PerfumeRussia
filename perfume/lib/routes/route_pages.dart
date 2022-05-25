

import 'package:get/get.dart';
import 'package:perfume/bindings/perfumes_binding.dart';
import 'package:perfume/routes/app_routes.dart';
import 'package:perfume/screens/desktop/home_page.dart';
import 'package:perfume/screens/desktop/perfumes_page.dart';
import 'package:perfume/utils/layout_seperator.dart';

class RoutesPage{
  static final pages = [
    GetPage(name: Routes.LAYOUTSEPERATOR, page: ()=> LayoutSeperator()),
    GetPage(name: Routes.HOME, page: ()=> HomePage()),
    GetPage(name: Routes.PERFUME, page: ()=> PerfumesPage(), binding: PerfumesBindings()),
  ];
}
