import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> imgList = [
    'assets/img/homeslider1.jpg',
    'assets/img/homeslider2.jpg',
    'assets/img/homeslider3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Home Slider Section
            Container(
                child: CarouselSlider.builder(
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 1,
                  // autoPlay: true,
                  viewportFraction: 1),
              itemCount: imgList.length,
              itemBuilder: (context, index, realIndex) {
                final url_image = imgList[index];
                return buildImage(url_image, index, context);
              },
            )),
            //Text Section
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              margin: EdgeInsets.only(top: 40, bottom: 40),
              child: const Text(
                '--- Our Catalogs ---',
                style: TextStyle(
                  fontFamily: "OdibeeSans",
                  fontSize: 56,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //Simple Catalog
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Each Catalog
                  //Skin Care
                  InkWell(
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
                  ),
                  //Make Up
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        children: [
                          // CircleAvatar(backgroundImage: AssetImage('assets/img/lotion.jpg'),),
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/img/catalog/makeup.jpg'),
                            ),
                          ),
                          Text(
                            'Make Up',
                            style: TextStyle(
                                fontFamily: 'OdibeeSans', fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Fregrance
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        children: [
                          // CircleAvatar(backgroundImage: AssetImage('assets/img/lotion.jpg'),),
                          Container(
                            width: 120,
                            height: 120,
                            // child: Image(image: AssetImage('assets/img/fregrance.jpg'),),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/img/catalog/fregrance.jpg'),
                            ),
                          ),
                          Text(
                            'Fregrance',
                            style: TextStyle(
                                fontFamily: 'OdibeeSans', fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //LipStick
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/img/catalog/lipstick.jpg'),
                            ),
                          ),
                          Text(
                            'LipStick',
                            style: TextStyle(
                                fontFamily: 'OdibeeSans', fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Mascara
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        children: [
                          // CircleAvatar(backgroundImage: AssetImage('assets/img/catalog/lotion.jpg'),),
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/img/catalog/mascara.jpg'),
                            ),
                          ),
                          Text(
                            'Mascara',
                            style: TextStyle(
                                fontFamily: 'OdibeeSans', fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Serum
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        children: [
                          // CircleAvatar(backgroundImage: AssetImage('assets/img/lotion.jpg'),),
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/img/catalog/serum.jpg'),
                            ),
                          ),
                          Text(
                            'Serum',
                            style: TextStyle(
                                fontFamily: 'OdibeeSans', fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Text Section
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              margin: EdgeInsets.only(top: 40, bottom: 40),
              child: const Text(
                'Women Perfumes',
                style: TextStyle(
                  fontFamily: "OdibeeSans",
                  fontSize: 46,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //Women Perfumes -> Grid Section
            Container(
                margin: EdgeInsets.only(left: 20, bottom: 30),
                height: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                        width: 250,
                        height: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage(
                                    'assets/img/womenperfumes/guerlain.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Guerlain',
                                style: GoogleFonts.arsenal(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              child: Text(
                                'Aqua Allegoria Neroila Vetiver',
                                style: GoogleFonts.arsenal(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              child: Text(
                                'Eau De Tollette',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold),
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
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17)),
                                      textAlign: TextAlign.start,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 12),
                                      padding: EdgeInsets.only(left: 8, right: 8),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        )
                                      ),
                                      child: Text('%32', style: TextStyle(color: Colors.red, fontSize: 14),),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String url_image, int index, BuildContext context) {
    print('index is ${index}');
    switch (index) {
      case 0:
        return Stack(children: [
          Container(
            child: Image(
              image: AssetImage(
                url_image,
              ),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: const Text(
                      'Cosmetic Face Products',
                      style: TextStyle(
                          fontFamily: 'Smooch',
                          fontSize: 48,
                          color: Colors.purpleAccent),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      'Cleansing, Beautifying, Promoting Attractiveness without Affecting the Body',
                      style: TextStyle(
                        fontFamily: "OdibeeSans",
                        fontSize: 56,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purpleAccent,
                          padding: EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Shop Now',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ]);
      case 1:
        return Stack(children: [
          Container(
            child: Image(
              image: AssetImage(
                url_image,
              ),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: Text('some'),
                  ),
                ],
              ),
            ),
          ),
        ]);
      // break;
      case 2:
        return Stack(children: [
          Container(
            child: Image(
              image: AssetImage(
                url_image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ]);
      // break;
      default:
        return Stack(children: [
          Container(
            child: Image(
              image: AssetImage(
                url_image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ]);
    }
  }
}
