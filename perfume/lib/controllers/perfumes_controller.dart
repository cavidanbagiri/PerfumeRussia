import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perfume/models/checkbox_state.dart';
import '../models/checkbox_state.dart';

class PerfumesController extends GetxController {
  //Create FirebaseFirestore object;
  final firestore = FirebaseFirestore.instance.collection('eachitem');

  //Creating storage for Firebase Storage
  final storage = FirebaseStorage.instance;

  //Take Image Url
  String? downloadURL;

  //Second String
  String? image_eact;

  //Get All Data From Firebase Firestore
  Stream<QuerySnapshot> getData() {
    final temp = firestore.snapshots();
    return temp;
  }

  //List Of Brands
  RxList<CheckBoxState> brands_set = RxList();

  Future getBrands() async {
    // final temp = await firestore.doc('ZSbcKUxysV5XTYCBJK0H').get();
    final query_snapshot = await firestore.get();
    //document type is List<DocumentSnapshots>
    final document = await query_snapshot.docs;
    Set<String> temp ={};
    await document.map((doc) {
      temp.add(doc['title']);
    }).toSet();

    await temp.map((e) => brands_set.add(CheckBoxState(title: e))).toList();

    return brands_set;
  }

  CheckboxListTile buildSingleCheckBoxForSet(CheckBoxState checkbox) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Colors.purpleAccent,
      value: checkbox.value,
      title: Text('${checkbox.title}'),
      onChanged: (value) {
        var temp;
        int index = 0;
        for (int i = 0; i < brands_set.length; i++) {
          if (brands_set[i] == checkbox) {
            brands_set[i].value = value!;
            temp = brands_set[i];
            index = i;
          }
        }
        brands_set[index] = temp;
        print('name is ${checkbox.title}');
      },
    );
  }

}

//List of Materials Names
// var names = [
//   CheckBoxState(title: 'Biotherm').obs,
//   CheckBoxState(title: 'Calvin Clain').obs,
// ].obs;



//Change CheckBox List inside of Getx Controller
  // CheckboxListTile buildSingleCheckBox(Rx<CheckBoxState> checkbox) {
  //   return CheckboxListTile(
  //     controlAffinity: ListTileControlAffinity.leading,
  //     activeColor: Colors.purpleAccent,
  //     value: checkbox.value.value,
  //     title: Text('${checkbox.value.title}'),
  //     onChanged: (value) {
  //       var temp;
  //       int index = 0;
  //       for (int i = 0; i < names.length; i++) {
  //         if (names[i] == checkbox) {
  //           names[i].value.value = value!;
  //           temp = names[i];
  //           index = i;
  //         }
  //       }
  //       names[index] = temp;
  //       print('name is ${checkbox.value.title}');
  //     },
  //   );
  // }



// void toggle(CheckBoxState check_box, value) {
//   var temp;
//   int index = 0;
//   for (int i = 0; i < names.length; i++) {
//     if (names[i] == check_box) {
//       names[i].value = value;
//       temp = names[i];
//       index = i;
//     }
//   }
//   names[index] = temp;
// }

// Future<String> getImageData() async {
//   try {
//     await downloadURLExample();
//     print('url is downloadurl new : ${downloadURL}');
//     return downloadURL!;
//   } catch (e) {
//     print('${e.toString()}');
//     return 'none';
//   }
// }
//
// //Show Image inside of this string
// Future<void> downloadURLExample() async {
//   downloadURL = await storage
//       .refFromURL('gs://perfume-99223.appspot.com/files')
//       .child('Qu0T4qbRljoqE1CooqhL')
//       .getDownloadURL()
//       .then((value) => image_eact = value);
//   print('download url is : ${downloadURL.toString()}');
// }