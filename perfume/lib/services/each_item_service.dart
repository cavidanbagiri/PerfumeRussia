

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';


class EachItemService{

  //For Taking an Image
  File? main_file;

  //Creating storage for Firebase Storage
  final storage = FirebaseStorage.instance;

  //Creating FirebaseFirestore istance for getting collection and crud operation
  // FirebaseFirestore firestore = FirebaseFirestore.instance;

  //Creating value for taking collection name
  final each_item_collection = FirebaseFirestore.instance.collection('eachitem');

  //Create FirebaseStorage for uploading image to Storage

  //Add Image To Firebase
  Future<void> addImage()async{

  }

  //Adding item to collection
  Future<String> addDocument(String title, String origin, String source, String price_sale, String regular_price, String sex)async{
    try{
      final doc_ref = await each_item_collection.add(
        {
          'title':title,
          'origin':origin,
          'source':source,
          'price_sale':price_sale,
          'regular_price':regular_price,
          'sex':sex,
        }
      );
      await Get.snackbar('Article Added', 'Article Added',
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text('Succesfully Added'),
          messageText: Text('Article Added'));
      return doc_ref.id.toString();
    }
    catch(e){
      print('Error happen inside of Adding Each item Service ${e.toString()}');
      return 'null';
    }
  }

  //Update Data With For IMage Id;
  Future<void> updateAndAddImageId(String id, String imageUrl)async{
    await each_item_collection.doc(id).update({
      'image_url':imageUrl
    }).then((value) => print('can update')).catchError((e)=>print('Error Happen inside of update ${e.toString()}'));

  }

}
