import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perfume/routes/app_routes.dart';
import 'package:perfume/routes/route_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.LAYOUTSEPERATOR,
      getPages: RoutesPage.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}

