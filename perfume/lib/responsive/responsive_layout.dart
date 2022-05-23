
import 'package:flutter/material.dart';
import 'package:perfume/utils/utils.dart';

class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout({Key? key, required this.desktopBody, required this.mobileBody}) : super(key: key);

  Widget desktopBody;
  Widget mobileBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {

      if(constraints.maxWidth<MOBILESIZE){
        return mobileBody;
      }
      else{
        return desktopBody;
      }

    });
  }
}
