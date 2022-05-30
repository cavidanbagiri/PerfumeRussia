

import 'dart:html';
import 'dart:io';

import 'package:file_picker/_internal/file_picker_web.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:perfume/services/each_item_service.dart';

class AdminPageController extends GetxController{

  //Creating storage for Firebase Storage
  final storage = FirebaseStorage.instance;

  //This Adding IMage can work
  // Future<void> addImage()async{
  //   var file;
  //   String some;
  //   var uploadElement = await FileUploadInputElement()..accept = 'image/*';
  //   uploadElement.click();
  //   await uploadElement.onChange.listen((event) {
  //     file = uploadElement.files?.first;
  //     final reader = FileReader();
  //     reader.readAsDataUrl(file!);
  //     reader.onLoadEnd.listen((event) {
  //
  //       try{
  //         storage.ref('files/${file.name}').putBlob(file);
  //       }
  //       catch(e){
  //         print('Error happen here : ${e}');
  //       }
  //     });
  //   });
  //
  // }



  //Creating service instance
  final eachItemService = EachItemService();

  var title;
  var origin;
  var source;
  var price_sale;
  var regular_price;
  var sex;
  FilePickerResult? results;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    title = TextEditingController();
    origin = TextEditingController();
    source = TextEditingController();
    price_sale = TextEditingController();
    regular_price = TextEditingController();
    sex = TextEditingController();
  }

  Future<void> addItemToCollection(String title, String origin, String source, String price_sale, String regular_price, String sex, FilePickerResult? res)async{

    results = res;

    if(results == null){
      print('result is null');
    }
    final name = results?.files.single.name;
    final bytes = results?.files.first.bytes;

    try{
      String get_current_id = await eachItemService.addDocument(title, origin, source, price_sale, regular_price, sex);
      await storage.ref('files/$get_current_id').putData(bytes!, SettableMetadata(contentType: 'image/jpg'));
    }catch(e){
      print('${e.toString()}');
    }

  }

  Future<void> addImage()async{

    final res = await FilePicker.platform.pickFiles(
      allowMultiple: false,
    );

    results = res;

  }


}


//Get Image As ImageInfo
// final result = await ImagePickerWeb.getImageAsFile();
//
// // ImagePickerWeb.
//
// //If Null Return Function
// if(result == null)return;
//
// //Take FileName
// final path = await result.name;
//
// //Create Destination
// final destination = await 'files/$path';
//
// try{
//
//
//
//   //Create Referance
//   final ref = FirebaseStorage.instance.ref(destination);
//   //Upload Data To Firebase Storage
//   ref.putData(result);
//   ref.putFile(result);
//   ref.putBlob(blob)
//   // ref.putData(, )
// }
// catch(e){
//   print('Error is ${e.toString()}');
// }