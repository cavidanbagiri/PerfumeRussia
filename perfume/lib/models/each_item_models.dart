
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class EachItemModel{


  String? title;
  String? origin;
  String? source;
  String? price_sale;
  String? regular_price;
  String? sex;
  String? image_url;
  // EachItemModel();
  EachItemModel.write(this.title, this.origin, this.source, this.price_sale, this.regular_price, this.sex);

  EachItemModel.fromDocumentSnapshot(DocumentSnapshot documentSnapshot){
    // this.title = map['title'];
    // print('${this.title}');
    print('title is ${documentSnapshot['title']}');
    // print('title is ${documentSnapshot['origin']}');
    // print('title is ${documentSnapshot['source']}');
    // print('title is ${documentSnapshot['price_sale']}');
    // print('title is ${documentSnapshot['regular_price']}');
    // print('title is ${documentSnapshot['sex']}');

    title = documentSnapshot['title'];
    origin = documentSnapshot['origin'];
    source = documentSnapshot['source'];
    price_sale = documentSnapshot['price_sale'];
    regular_price = documentSnapshot['regular_price'];
    sex = documentSnapshot['sex'];
    image_url = documentSnapshot['image_url'];


  }

}
