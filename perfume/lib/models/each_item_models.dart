
import 'package:cloud_firestore/cloud_firestore.dart';

class EachItemModel{

  String? category;
  String? title;
  String? origin;
  String? source;
  String? price_sale;
  String? regular_price;
  String? sex;
  String? image_url;
  // EachItemModel();
  EachItemModel.write(this.title, this.origin, this.source, this.price_sale, this.regular_price, this.sex, this.category);

  EachItemModel.fromDocumentSnapshot(DocumentSnapshot documentSnapshot){
    category = documentSnapshot['category'];
    title = documentSnapshot['title'];
    origin = documentSnapshot['origin'];
    source = documentSnapshot['source'];
    price_sale = documentSnapshot['price_sale'];
    regular_price = documentSnapshot['regular_price'];
    sex = documentSnapshot['sex'];
    image_url = documentSnapshot['image_url'];
  }

}
