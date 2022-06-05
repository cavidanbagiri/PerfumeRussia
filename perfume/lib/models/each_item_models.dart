
import 'package:cloud_firestore/cloud_firestore.dart';

class EachItemModel{


  String? title;
  String? origin;
  String? source;
  String? price_sale;
  String? regular_price;
  String? sex;
  // EachItemModel();
  EachItemModel.write(this.title, this.origin, this.source, this.price_sale, this.regular_price, this.sex);
  EachItemModel.fromMap(DocumentSnapshot<Map<String, dynamic>> map){
    // this.title = map['title'];
    // print('${this.title}');
    print('title is ${map['title']}');
  }

}
