import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perfume/controllers/tenp_controller.dart';

class ShowImage extends StatelessWidget {
  ShowImage({Key? key}) : super(key: key);
  final controller = Get.put(TempController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: controller.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text('Somethinf is wrong');
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                Image.network(snapshot.data.toString()),
              ],
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
