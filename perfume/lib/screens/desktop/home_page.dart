import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perfume/widgets/each_item_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> imgList = [
    'assets/img/homeslider1.jpg',
    'assets/img/homeslider2.jpg',
    'assets/img/homeslider3.jpg',
  ];

  final ScrollController _controllerOne = ScrollController();

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
            Container (
              margin: EdgeInsets.only(bottom: 30, top:15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Each Catalog
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

            //Women FragranceImage Section
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 20),
              height: 500,
              width: MediaQuery.of(context).size.width*1,
              child: Image(
                image: AssetImage(
                    'assets/img/womenperfumes/womens.jpg',),
                fit: BoxFit.cover,
              ),
            ),
            //Women FragranceText Section
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              margin: EdgeInsets.only(top: 40, bottom: 40),
              child: const Text(
                'Fragrances for Women',
                style: TextStyle(
                  fontFamily: "OdibeeSans",
                  fontSize: 46,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //Women Perfumes -> Grid Section
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 60),
              height: 400,
              child: Scrollbar(
                controller: _controllerOne,
                // isAlwaysShown: true,
                interactive: true,
                // showTrackOnHover: true,
                trackVisibility: true,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return EachItemWidget();
                    }),
              ),
            ),

            //Man FragranceImage Section
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 20),
              height: 400,
              width: MediaQuery.of(context).size.width*1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image(
                        image: AssetImage(
                          'assets/img/manperfumes/man2.jpg',),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Image(
                        image: AssetImage(
                          'assets/img/manperfumes/man.jpg',),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image(
                        image: AssetImage(
                          'assets/img/manperfumes/man3.jpg',),
                        fit: BoxFit.cover,
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
                'Fragrance For Man',
                style: TextStyle(
                  fontFamily: "OdibeeSans",
                  fontSize: 46,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //Men Perfumes -> Grid Section
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 60),
              height: 400,
              child: Scrollbar(
                controller: _controllerOne,
                // isAlwaysShown: true,
                interactive: true,
                // showTrackOnHover: true,
                trackVisibility: true,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return EachItemWidget();
                    }),
              ),
            ),

            //MakeUp Image Section
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 20),
              height: 400,
              width: MediaQuery.of(context).size.width*1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image(
                        image: AssetImage(
                          'assets/img/makeup/makeup2.jpg',),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Image(
                        image: AssetImage(
                          'assets/img/makeup/makeup.jpg',),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image(
                        image: AssetImage(
                          'assets/img/makeup/makeup3.jpg',),
                        fit: BoxFit.cover,
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
                'MakeUp',
                style: TextStyle(
                  fontFamily: "OdibeeSans",
                  fontSize: 46,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //MakeUp Perfumes -> Grid Section
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 60),
              height: 400,
              child: Scrollbar(
                controller: _controllerOne,
                // isAlwaysShown: true,
                interactive: true,
                // showTrackOnHover: true,
                trackVisibility: true,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return EachItemWidget();
                    }),
              ),
            ),

            //Skin Care Image Section
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 20),
              height: 400,
              width: MediaQuery.of(context).size.width*1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image(
                        image: AssetImage(
                          'assets/img/makeup/makeup2.jpg',),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Image(
                        image: AssetImage(
                          'assets/img/makeup/makeup.jpg',),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image(
                        image: AssetImage(
                          'assets/img/makeup/makeup3.jpg',),
                        fit: BoxFit.cover,
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
                'Skin Care',
                style: TextStyle(
                  fontFamily: "OdibeeSans",
                  fontSize: 46,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //Skin Care Perfumes -> Grid Section
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 60),
              height: 400,
              child: Scrollbar(
                controller: _controllerOne,
                // isAlwaysShown: true,
                interactive: true,
                // showTrackOnHover: true,
                trackVisibility: true,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return EachItemWidget();
                    }),
              ),
            ),


            //Footer
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width*1,
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black54,
            )

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
