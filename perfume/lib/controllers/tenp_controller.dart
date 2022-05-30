

import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class TempController extends GetxController{

  //Creating storage for Firebase Storage
  final storage = FirebaseStorage.instance;

  String ?downloadURL;

  Future<String> getData()async{

    try{
      await downloadURLExample();
      print('url is downloadurl new : ${downloadURL}');
      return downloadURL!;
    }
    catch(e){
      print('${e.toString()}');
      return 'none';
    }

  }

  //Show Image inside of this string
  Future<void> downloadURLExample()async{

    downloadURL = await storage.refFromURL('gs://perfume-99223.appspot.com/files').child('download.jpg').getDownloadURL();

  }



}
