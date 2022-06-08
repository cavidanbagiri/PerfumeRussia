import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategorySelector extends StatelessWidget {
  CategorySelector({
    Key? key,
  }) : super(key: key);

  List<String> items = ['Fregrance', 'Hair Care', 'Skin Care', 'Make Up'];
  var selected_item = 'Fregrance'.obs;

  String? item;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 100,
        child: DropdownButton(
          onChanged: (item) {
            selected_item.value = item as String;

            print('selected item is : ${selected_item}');
          },
          value: selected_item.value,
          items: items
              .map((item) => DropdownMenuItem(
                    child: Text(item),
                    value: item,
                  ))
              .toList(),
        ));
  }
}

Widget third() {
  List<String> items = ['Fregrance', 'Hair Care', 'Skin Care', 'Make Up'];
  final selected_item = 'Fregrance'.obs;

  return Container(
      width: 300,
      height: 100,
      child: DropdownButton(
        onChanged: (item) {
          selected_item(item as String);
        },
        value: selected_item.value,
        items: items
            .map((item) => DropdownMenuItem(
                  child: Text(item),
                  value: item,
                ))
            .toList(),
      ));
}
