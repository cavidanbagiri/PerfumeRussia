

import 'package:flutter/material.dart';
import 'package:perfume/screens/desktop/home_page.dart';
import 'package:perfume/widgets/app_bar.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: HomePage(),
    );
  }
}

