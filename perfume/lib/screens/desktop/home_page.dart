import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
              margin: EdgeInsets.only(top:20, bottom:20),
              child: const Text(
                'Top Of The Charts',
                style: TextStyle(
                  // fontFamily: "OdibeeSans",
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
                  InkWell(
                    onTap: (){},
                    child: Container(
                      child: Column(
                        children: [
                          // CircleAvatar(backgroundImage: AssetImage('assets/img/lotion.jpg'),),
                          Container(
                            width:120,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle
                            ),
                            child: Image(image: AssetImage('assets/img/lotion.jpg'),),
                          ),
                          Text('Lotion', style: TextStyle(
                            fontFamily: 'OdibeeSans',
                            fontSize: 32
                          ),),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      child: Column(
                        children: [
                          // CircleAvatar(backgroundImage: AssetImage('assets/img/lotion.jpg'),),
                          Container(
                            width:120,
                            height: 120,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image(image: AssetImage('assets/img/concealer.jpg'),),
                          ),
                          Text('Concealer',style: TextStyle(
                              fontFamily: 'OdibeeSans',
                              fontSize: 32
                          ),),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      child: Column(
                        children: [
                          // CircleAvatar(backgroundImage: AssetImage('assets/img/lotion.jpg'),),
                          Container(
                            width:120,
                            height: 120,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image(image: AssetImage('assets/img/fregrance.jpg'),),
                          ),
                          Text('Fregrance', style: TextStyle(
                              fontFamily: 'OdibeeSans',
                              fontSize: 32
                          ),),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      child: Column(
                        children: [
                          // CircleAvatar(backgroundImage: AssetImage('assets/img/lotion.jpg'),),
                          Container(
                            width:120,
                            height: 120,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image(image: AssetImage('assets/img/lipstick.jpg'),),
                          ),
                          Text('LipStick', style: TextStyle(
                              fontFamily: 'OdibeeSans',
                              fontSize: 32
                          ),),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      child: Column(
                        children: [
                          // CircleAvatar(backgroundImage: AssetImage('assets/img/lotion.jpg'),),
                          Container(
                            width:120,
                            height: 120,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image(image: AssetImage('assets/img/mascara.jpg'),),
                          ),
                          Text('Mascara', style: TextStyle(
                              fontFamily: 'OdibeeSans',
                              fontSize: 32
                          ),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        // CircleAvatar(backgroundImage: AssetImage('assets/img/lotion.jpg'),),
                        Container(
                          width:120,
                          height: 120,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle
                          ),
                          child: Image(image: AssetImage('assets/img/serum.jpg'),),
                        ),
                        Text('Serum', style: TextStyle(
                            fontFamily: 'OdibeeSans',
                            fontSize: 32
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
                          primary : Colors.purpleAccent,
                        padding: EdgeInsets.only(top:20, bottom: 20, left: 10, right: 10),
                      ),
                        onPressed: () {}, child: Text('Shop Now', style: TextStyle(fontSize: 24,),)),
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
