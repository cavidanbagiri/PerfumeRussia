


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perfume/controllers/perfumes_controller.dart';
import 'package:perfume/widgets/app_bar.dart';

class PerfumesPage extends GetView<PerfumesController> {
  const PerfumesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        child: SingleChildScrollView(
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.2,
                margin: EdgeInsets.all(8),
                color: Colors.green,
                child: Column(
                  children: [
                    Container(
                      child: Text('some'),
                    ),
                    Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),Container(
                      child: Text('some'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8),
                width: MediaQuery.of(context).size.width*0.7,
                color: Colors.red,
                child: Text('somes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

