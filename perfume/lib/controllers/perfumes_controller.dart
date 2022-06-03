import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perfume/models/checkbox_state.dart';

class PerfumesController extends GetxController {
  //Create FirebaseFirestore object;
  final firestore = FirebaseFirestore.instance.collection('eachitem');

  //Creating storage for Firebase Storage
  final storage = FirebaseStorage.instance;

  //Take Image Url
  String? downloadURL;

  //Second String
  String? image_eact;

  Future<String> getImageData() async {
    try {
      await downloadURLExample();
      print('url is downloadurl new : ${downloadURL}');
      return downloadURL!;
    } catch (e) {
      print('${e.toString()}');
      return 'none';
    }
  }

  //Show Image inside of this string
  Future<void> downloadURLExample() async {
    downloadURL = await storage
        .refFromURL('gs://perfume-99223.appspot.com/files')
        .child('Qu0T4qbRljoqE1CooqhL')
        .getDownloadURL()
        .then((value) => image_eact = value);
    print('download url is : ${downloadURL.toString()}');
  }

  //Get All Data From Firebase Firestore
  Stream<QuerySnapshot> getData() {
    // downloadURLExample();
    final temp = firestore.snapshots();
    return temp;
  }

  //List of Materials Names
  var names = [
    CheckBoxState(title: 'Biotherm'),
    CheckBoxState(title: 'Calvin Clain'),
    // CheckBoxState(title: 'Dior'),
    // CheckBoxState(title: 'Dolce Gabbana'),
    // CheckBoxState(title: 'Hermes'),
    // CheckBoxState(title: 'Sisle'),
    // CheckBoxState(title: 'Guerlain'),
    // CheckBoxState(title: 'Lancome'),
    // CheckBoxState(title: 'Clarins'),
    // CheckBoxState(title: 'Paco Rabbane'),
    // CheckBoxState(title: 'Jean Paul Leartier'),
    // CheckBoxState(title: 'Versace'),
    // CheckBoxState(title: 'Adolfe Romance'),
    // CheckBoxState(title: 'Amouage'),
    // CheckBoxState(title: 'Better'),
    // CheckBoxState(title: 'Bvlgari'),
    // CheckBoxState(title: 'Cartier'),
    // CheckBoxState(title: 'Chloe'),
    // CheckBoxState(title: 'Davidoff'),
    // CheckBoxState(title: 'Sheich'),
  ].obs;

  //Change CheckBox List inside of Getx Controller
  CheckboxListTile buildSingleCheckBox(CheckBoxState checkbox) {
    return CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.purpleAccent,
        value: checkbox.value,
        title: Text('${checkbox.title}'),
        onChanged: (value) {
          var temp;
          int index = 0;
          for (int i = 0; i < names.length; i++) {
            if (names[i] == checkbox) {
              names[i].value = value!;
              temp = names[i];
              index = i;
            }
          }
          names[index] = temp;
          print('name is ${checkbox.title}');
        });
  }
}

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
