import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EachItemWidgetStream extends StatelessWidget {
  EachItemWidgetStream(
      {Key? key,
      required this.title,
      required this.origin,
      required this.source,
      required this.price_sale,
      required this.regular_price,
      required this.sex})
      : super(key: key);

  String? title;
  String? origin;
  String? source;
  String? price_sale;
  String? regular_price;
  String? sex;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 15),
        width: 200,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image(
                image: AssetImage('assets/img/womenperfumes/guerlain.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                '${title}',
                style: GoogleFonts.arsenal(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                '${origin}',
                style: GoogleFonts.arsenal(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                '${source}',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${price_sale}\$',
                      style: GoogleFonts.arsenal(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      textAlign: TextAlign.start,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.red,
                        width: 1,
                      )),
                      child: Text(
                        '${regular_price}',
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
