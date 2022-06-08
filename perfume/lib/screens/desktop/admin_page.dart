import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perfume/controllers/admin_page_controller.dart';
import 'package:perfume/widgets/categoryselector.dart';

class AdminPage extends GetView<AdminPageController> {
  AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //height: 1500,
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          children: [
            Obx(
              () => controller.returnDropDown()
            ),
            Container(
              width: 300,
              height: 60,
              child: TextField(
                decoration: InputDecoration(hintText: 'Title'),
                controller: controller.title,
              ),
            ),
            Container(
              width: 300,
              height: 60,
              child: TextField(
                decoration: InputDecoration(hintText: 'origin'),
                controller: controller.origin,
              ),
            ),
            Container(
              width: 300,
              height: 60,
              child: TextField(
                decoration: InputDecoration(hintText: 'source'),
                controller: controller.source,
              ),
            ),
            Container(
              width: 300,
              height: 100,
              child: TextField(
                decoration: InputDecoration(hintText: 'price_sale'),
                controller: controller.price_sale,
              ),
            ),
            Container(
              width: 300,
              height: 60,
              child: TextField(
                decoration: InputDecoration(hintText: 'regular_sale'),
                controller: controller.regular_price,
              ),
            ),
            Container(
              width: 300,
              height: 80,
              child: Obx(() {
                return DropdownButton(
                  onChanged: (item) {
                    controller.sex_selected_item(item as String);
                  },
                  value: controller.sex_selected_item.value,
                  items: controller.items
                      .map((item) => DropdownMenuItem(
                            child: Text(item),
                            value: item,
                          ))
                      .toList(),
                );
              }),
            ),
            Container(
                margin: EdgeInsets.all(8),
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    controller.addImage();
                  },
                  child: Text('Image'),
                )),
            Container(
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  controller.addItemToCollection(
                      controller.category,
                      controller.title.text,
                      controller.origin.text,
                      controller.source.text,
                      controller.price_sale.text,
                      controller.regular_price.text,
                      controller.sex_selected_item.value,
                      controller.results);
                },
                child: Text('Add'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
