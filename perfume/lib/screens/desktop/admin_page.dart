

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:perfume/controllers/admin_page_controller.dart';



class AdminPage extends GetView<AdminPageController> {
  AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          children: [
            Container(
              width: 300,
              height: 100,
              child: TextField(
                decoration: InputDecoration(hintText: 'Title'),
                controller: controller.title,
              ),
            ),
            Container(
              width: 300,
              height: 100,
              child: TextField(
                decoration: InputDecoration(hintText: 'origin'),
                controller: controller.origin,
              ),
            ),
            Container(
              width: 300,
              height: 100,
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
              height: 100,
              child: TextField(
                decoration: InputDecoration(hintText: 'regular_sale'),
                controller: controller.regular_price,
              ),
            ),
            Container(
              width: 300,
              height: 100,
              child: TextField(
                decoration: InputDecoration(hintText: 'sex'),
                controller: controller.sex,
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
                width: 300,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    controller.addImage();
                  },
                  child: Text('Image'),
                )),
            ElevatedButton(
              onPressed: () {
                controller.addItemToCollection(
                    controller.title.text,
                    controller.origin.text,
                    controller.source.text,
                    controller.price_sale.text,
                    controller.regular_price.text,
                    controller.sex.text,
                    controller.results
                );
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
