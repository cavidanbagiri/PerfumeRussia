


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
        builder: (context, snapshot){
          if(snapshot.hasError){
            return const Text('Somethinf is wrong');
          }
          if(snapshot.connectionState == ConnectionState.done){
            return Column(
              children: [
                Text('${snapshot.data}'),
            // Image.network(snapshot.data.toString()),
            Image.network('https://firebasestorage.googleapis.com/v0/b/perfume-99223.appspot.com/o/files%2Fdownload.jpg?alt=media&token=6065ffa4-1abc-4f41-a0ff-78f5b4f18d12'),
            //   Image(image: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fenglishstudypage.com%2Fgrammar%2Fusing-some-and-any-in-english%2F&psig=AOvVaw14Hqn5JG7E3Fju1JTE9MFU&ust=1653983193798000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCOCU4djdhvgCFQAAAAAdAAAAABAD'))
              ],
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
