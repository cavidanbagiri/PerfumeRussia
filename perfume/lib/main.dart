import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perfume/routes/app_routes.dart';
import 'package:perfume/routes/route_pages.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyD5mAwt9ijwP8_J-K-R3TsCXBYe0IxM5I4",
          authDomain: "perfume-99223.firebaseapp.com",
          projectId: "perfume-99223",
          storageBucket: "perfume-99223.appspot.com",
          messagingSenderId: "527674698720",
          appId: "1:527674698720:web:240faf5a25a0e8b7cf5985"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Perfumes',
      initialRoute: Routes.LAYOUTSEPERATOR,
      getPages: RoutesPage.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
