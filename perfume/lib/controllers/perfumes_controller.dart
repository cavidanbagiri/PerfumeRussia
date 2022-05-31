import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perfume/models/checkbox_state.dart';
import 'package:perfume/models/each_item_models.dart';

class PerfumesController extends GetxController {
  RxList<EachItemModel> perfumes = RxList<EachItemModel>();

  //Create FirebaseFirestore object;
  final firestore = FirebaseFirestore.instance.collection('eachitem');

  //List Size;
  var doc_size = 0;

  var names = [
    CheckBoxState(title: 'Biotherm'),
    CheckBoxState(title: 'Calvin Clain'),
    CheckBoxState(title: 'Dior'),
    CheckBoxState(title: 'Dolce Gabbana'),
    CheckBoxState(title: 'Hermes'),
    CheckBoxState(title: 'Sisle'),
    CheckBoxState(title: 'Guerlain'),
    CheckBoxState(title: 'Lancome'),
    CheckBoxState(title: 'Clarins'),
    CheckBoxState(title: 'Paco Rabbane'),
    CheckBoxState(title: 'Jean Paul Leartier'),
    CheckBoxState(title: 'Versace'),
    CheckBoxState(title: 'Adolfe Romance'),
    CheckBoxState(title: 'Amouage'),
    CheckBoxState(title: 'Better'),
    CheckBoxState(title: 'Bvlgari'),
    CheckBoxState(title: 'Cartier'),
    CheckBoxState(title: 'Chloe'),
    CheckBoxState(title: 'Davidoff'),
    CheckBoxState(title: 'Sheich'),
  ].obs;

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

  //Get All Data From Firebase Firestore
  Stream<QuerySnapshot> getData(){
    final temp = firestore.snapshots();
    return temp;
  }



}
