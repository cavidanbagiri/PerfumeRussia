
import 'package:flutter/material.dart';

class GenderDropDownBtn extends StatelessWidget {

  GenderDropDownBtn({Key? key,}) : super(key: key);

  List<String> items = ['Women', 'Man', 'Kids', 'All'];
  String? selected_item = 'Women';


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      child: DropdownButton(
        // onChanged: onChange,
        onChanged: (item){
          selected_item = item as String;
          print('selected item is : ${selected_item}');
        },
        value: selected_item,
        items: items.map((item) => DropdownMenuItem(child: Text(item), value: item,)).toList(),
      )
    );
  }
}
