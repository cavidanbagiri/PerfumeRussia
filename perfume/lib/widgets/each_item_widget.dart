import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EachItemWidget extends StatelessWidget {
  const EachItemWidget({Key? key}) : super(key: key);

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
                'Guerlain',
                style: GoogleFonts.arsenal(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                'Aqua Allegoria Neroila Vetiver',
                style: GoogleFonts.arsenal(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                'Eau De Tollette',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '4499.22 RUR',
                      style: GoogleFonts.arsenal(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17)),
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
                        '%32',
                        style: TextStyle(color: Colors.red, fontSize: 14),
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
