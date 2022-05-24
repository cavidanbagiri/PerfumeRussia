

import 'package:flutter/material.dart';

class EachCatalogWidget extends StatelessWidget {
  const EachCatalogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Column(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/img/catalog/womenskincare.jpg'),
              ),
            ),
            Text(
              'Skin Care',
              style: TextStyle(
                  fontFamily: 'OdibeeSans', fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}

