
import 'package:get/get.dart';

class CheckBoxState{

  final String title;
  bool value=false;

  CheckBoxState({required this.title, this.value=false});

}


// class some{
//   var name;
//   some({this.name});
// }

// import 'package:get/get.dart';
//
// class Product {
//   final int id;
//   final String productName;
//   final String productImage;
//   final String productDescription;
//   final double price;
//
//   Product({
//     this.id,
//     this.productName,
//     this.productImage,
//     this.productDescription,
//     this.price,
//   });
//
//   final isFavorite = false.obs;
// }