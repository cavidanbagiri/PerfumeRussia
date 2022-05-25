import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perfume/routes/app_routes.dart';
import 'package:perfume/routes/route_pages.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cavidan',
      initialRoute: Routes.LAYOUTSEPERATOR,
      getPages: RoutesPage.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}

