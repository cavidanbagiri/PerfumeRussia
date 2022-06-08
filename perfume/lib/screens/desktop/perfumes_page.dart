import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perfume/controllers/perfumes_controller.dart';
import 'package:perfume/widgets/app_bar.dart';
import 'package:perfume/widgets/each_item_widget_stream.dart';

import '../../models/each_item_models.dart';

class PerfumesPage extends GetView<PerfumesController> {
  PerfumesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // controller.update_data = controller.getData();

    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Filter Section
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * 0.2,
                  margin: EdgeInsets.all(8),
                  // color: Colors.green,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'Brands',
                            style: GoogleFonts.arsenal(
                                fontWeight: FontWeight.bold, fontSize: 32),
                          ),
                        ),
                        Container(
                          child: FutureBuilder(
                              future: controller.brands,
                              builder: (context, snapshot) {
                                if (snapshot.hasError) {
                                  return Text('Error ${snapshot.error}');
                                }
                                if (snapshot.hasData) {
                                  var data = snapshot.data;
                                  return Obx(
                                    () => ListView(
                                      shrinkWrap: true,
                                      padding: EdgeInsets.all(8),
                                      children: [
                                        ...controller.brands_set
                                            .map((checkbox) {
                                          return controller
                                              .buildSingleCheckBoxForSet(
                                                  checkbox);
                                        }).toList(),
                                      ],
                                    ),
                                  );
                                } else {
                                  return const CircularProgressIndicator();
                                }
                              }),
                        ),
                        // Container(
                        //   child: Obx(
                        //     () => ListView(
                        //       shrinkWrap: true,
                        //       padding: EdgeInsets.all(8),
                        //       children: [
                        //         ...controller.names.map((checkbox) {
                        //           return controller.buildSingleCheckBox(checkbox);
                        //         }).toList(),
                        //         // ...names.map((buildSingleCheckBox)).toList(),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                //Main Section
                Container(
                  margin: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: const Text(
                          'Women Fregrance',
                          style: TextStyle(
                            fontFamily: "OdibeeSans",
                            fontSize: 36,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      //Search Text Field
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.teal)),
                            hintText: 'Search for Product, a Brand',
                            helperText: 'Search Which Brand Or Product',
                            labelText: 'Search Brand',
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.purpleAccent,
                            ),
                          ),
                        ),
                        // height: 100,
                      ),
                      //Grid Section Fields
                      Obx(
                        () => Container(
                          child: TextButton(
                            child: Text('${controller.lss.length}'),
                            onPressed: () {
                              controller.updateD();
                            },
                          ),
                        ),
                      ),
                      Obx(
                        () => GridView.builder(
                            itemCount: controller.lss.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 5, childAspectRatio: 0.6),
                            itemBuilder: (context, index) {
                              return Container(
                                height: 400,
                                child: EachItemWidgetStream(
                                    title: controller.lss[index].title,
                                    origin: controller.lss[index].origin,
                                    source: controller.lss.length.toString(),
                                    price_sale:
                                        controller.lss[index].price_sale,
                                    regular_price:
                                        controller.lss[index].regular_price,
                                    sex: controller.lss[index].sex,
                                    image_url: controller.lss[index].image_url),
                              );
                            }),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:perfume/controllers/perfumes_controller.dart';
// import 'package:perfume/widgets/app_bar.dart';
// import 'package:perfume/widgets/each_item_widget_stream.dart';
//
// class PerfumesPage extends StatelessWidget {
//   final controller = Get.put(PerfumesController());
//   PerfumesPage({Key? key}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     // controller.update_data = controller.getData();
//
//     return Scaffold(
//       appBar: AppBarWidget(),
//       body: Container(
//         child: SingleChildScrollView(
//             child: Column(
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 //Filter Section
//                 Container(
//                   decoration: BoxDecoration(
//                     // color: Colors.white,
//                     borderRadius: const BorderRadius.only(
//                         topLeft: Radius.circular(10),
//                         topRight: Radius.circular(10),
//                         bottomLeft: Radius.circular(10),
//                         bottomRight: Radius.circular(10)),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.1),
//                         spreadRadius: 5,
//                         blurRadius: 7,
//                         offset: Offset(0, 3), // changes position of shadow
//                       ),
//                     ],
//                   ),
//                   width: MediaQuery.of(context).size.width * 0.2,
//                   margin: EdgeInsets.all(8),
//                   // color: Colors.green,
//                   child: Container(
//                     child: Column(
//                       children: [
//                         Container(
//                           child: Text(
//                             'Brands',
//                             style: GoogleFonts.arsenal(
//                                 fontWeight: FontWeight.bold, fontSize: 32),
//                           ),
//                         ),
//                         Container(
//                           child: FutureBuilder(
//                               future: controller.getBrands(),
//                               builder: (context, snapshot) {
//                                 if (snapshot.hasError) {
//                                   return Text('Error ${snapshot.error}');
//                                 }
//                                 if (snapshot.hasData) {
//                                   var data = snapshot.data;
//                                   return Obx(() => ListView(
//                                         shrinkWrap: true,
//                                         padding: EdgeInsets.all(8),
//                                         children: [
//                                           ...controller.brands_set.map((checkbox) {
//                                             return controller
//                                                 .buildSingleCheckBoxForSet(checkbox);
//                                           }).toList(),
//                                         ],
//                                       ));
//                                 } else {
//                                   return const CircularProgressIndicator();
//                                 }
//                               }),
//                         ),
//                         // Container(
//                         //   child: Obx(
//                         //     () => ListView(
//                         //       shrinkWrap: true,
//                         //       padding: EdgeInsets.all(8),
//                         //       children: [
//                         //         ...controller.names.map((checkbox) {
//                         //           return controller.buildSingleCheckBox(checkbox);
//                         //         }).toList(),
//                         //         // ...names.map((buildSingleCheckBox)).toList(),
//                         //       ],
//                         //     ),
//                         //   ),
//                         // ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 //Main Section
//                 StreamBuilder<QuerySnapshot>(
//                     stream: controller.getData(),
//                     // stream: controller.temps,
//                     builder: (context, snapshot) {
//                       if (snapshot.hasError) {
//                         return Text('Error');
//                       }
//                       if (snapshot.hasData) {
//                         var data = snapshot.data?.docs;
//                         return Container(
//                           margin: EdgeInsets.all(8),
//                           width: MediaQuery.of(context).size.width * 0.75,
//                           child: Column(
//                             children: [
//                               Container(
//                                 child: ElevatedButton(
//                                   child: Text('Update'),
//                                   onPressed: (){
//                                     controller.updateData();
//                                   },
//                                 ),
//                               ),
//                               //Text Section
//                               Container(
//                                 margin: EdgeInsets.only(top: 20),
//                                 child: const Text(
//                                   'Women Fregrance',
//                                   style: TextStyle(
//                                     fontFamily: "OdibeeSans",
//                                     fontSize: 36,
//                                   ),
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                               //Search Text Field
//                               Container(
//                                 margin: EdgeInsets.only(top: 10, bottom: 10),
//                                 child: const TextField(
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                         borderSide:
//                                             BorderSide(color: Colors.teal)),
//                                     hintText: 'Search for Product, a Brand',
//                                     helperText: 'Search Which Brand Or Product',
//                                     labelText: 'Search Brand',
//                                     prefixIcon: Icon(
//                                       Icons.person,
//                                       color: Colors.purpleAccent,
//                                     ),
//                                   ),
//                                 ),
//                                 // height: 100,
//                               ),
//                               //Grid Section Fields
//                               GridView.builder(
//                                   itemCount: data?.length,
//                                   shrinkWrap: true,
//                                   scrollDirection: Axis.vertical,
//                                   gridDelegate:
//                                       SliverGridDelegateWithFixedCrossAxisCount(
//                                           crossAxisCount: 5,
//                                           childAspectRatio: 0.6),
//                                   itemBuilder: (context, index) {
//                                     return Container(
//                                       height: 400,
//                                       child: EachItemWidgetStream(
//                                           title: data![index]['title'],
//                                           origin: data[index]['origin'],
//                                           source: data[index]['source'],
//                                           price_sale: data[index]['price_sale'],
//                                           regular_price: data[index]
//                                               ['regular_price'],
//                                           sex: data[index]['sex'],
//                                           image_url: data[index]['image_url']),
//                                     );
//                                   }),
//                             ],
//                           ),
//                         );
//                       } else {
//                         return CircularProgressIndicator();
//                       }
//                     })
//               ],
//             ),
//           ],
//         )),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:perfume/controllers/perfumes_controller.dart';
// import 'package:perfume/models/checkbox_state.dart';
// import 'package:perfume/widgets/app_bar.dart';
// import 'package:perfume/widgets/each_item_widget.dart';
//
// class PerfumesPage extends GetView<PerfumesController> {
//   PerfumesPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBarWidget(),
//       body: Container(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   //Filter Section
//                   Container(
//                     decoration: BoxDecoration(
//                       // color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(10),
//                           topRight: Radius.circular(10),
//                           bottomLeft: Radius.circular(10),
//                           bottomRight: Radius.circular(10)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.1),
//                           spreadRadius: 5,
//                           blurRadius: 7,
//                           offset: Offset(0, 3), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     width: MediaQuery.of(context).size.width * 0.2,
//                     margin: EdgeInsets.all(8),
//                     // color: Colors.green,
//                     child: Column(
//                       children: [
//                         Container(
//                           child: Text(
//                             'Brands',
//                             style: GoogleFonts.arsenal(
//                                 fontWeight: FontWeight.bold, fontSize: 32),
//                           ),
//                         ),
//                         Container(
//                           child: Obx(
//                             () => ListView(
//                               shrinkWrap: true,
//                               padding: EdgeInsets.all(8),
//                               children: [
//                                 ...controller.names.map((checkbox) {
//                                   return controller
//                                       .buildSingleCheckBox(checkbox);
//                                 }).toList(),
//                                 // ...names.map((buildSingleCheckBox)).toList(),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   //Main Section
//                   Container(
//                     margin: EdgeInsets.all(8),
//                     width: MediaQuery.of(context).size.width * 0.75,
//                     // height: 1000,
//                     // color: Colors.red,
//                     child: Column(
//                       children: [
//                         //Text Section
//                         Container(
//                           margin: EdgeInsets.only(top: 20),
//                           child: const Text(
//                             'Women Fregrance',
//                             style: TextStyle(
//                               fontFamily: "OdibeeSans",
//                               fontSize: 36,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                         //Search Text Field
//                         Container(
//                           margin: EdgeInsets.only(top: 10, bottom: 10),
//                           child: const TextField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                   borderSide: BorderSide(color: Colors.teal)),
//                               hintText: 'Search for Product, a Brand',
//                               helperText: 'Search Which Brand Or Product',
//                               labelText: 'Search Brand',
//                               prefixIcon: Icon(
//                                 Icons.person,
//                                 color: Colors.purpleAccent,
//                               ),
//                             ),
//                           ),
//                           // height: 100,
//                         ),
//                         //Grid Section Fields
//                         GridView.builder(
//                             itemCount: 43,
//                             shrinkWrap: true,
//                             scrollDirection: Axis.vertical,
//                             gridDelegate:
//                                 SliverGridDelegateWithFixedCrossAxisCount(
//                                     crossAxisCount: 5, childAspectRatio: 0.6),
//                             itemBuilder: (context, index) {
//                               return Container(
//                                 height: 400,
//                                 child: EachItemWidget(),
//                               );
//                             }),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:perfume/controllers/perfumes_controller.dart';
// import 'package:perfume/widgets/app_bar.dart';
// import 'package:perfume/widgets/each_item_widget_stream.dart';
//
// class PerfumesPage extends GetView<PerfumesController> {
//   PerfumesPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBarWidget(),
//       body: Container(
//         child: SingleChildScrollView(
//           child: StreamBuilder<QuerySnapshot>(
//             stream: controller.getData(),
//             builder: (context, snapshot) {
//               if (snapshot.hasError) {
//                 return Text('Nothing For Shown');
//               }
//               if (snapshot.hasData) {
//                 var data = snapshot.data?.docs;
//                 return Column(
//                   children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         //Filter Section
//                         Container(
//                           decoration: BoxDecoration(
//                             // color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(10),
//                                 topRight: Radius.circular(10),
//                                 bottomLeft: Radius.circular(10),
//                                 bottomRight: Radius.circular(10)),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.1),
//                                 spreadRadius: 5,
//                                 blurRadius: 7,
//                                 offset:
//                                     Offset(0, 3), // changes position of shadow
//                               ),
//                             ],
//                           ),
//                           width: MediaQuery.of(context).size.width * 0.2,
//                           margin: EdgeInsets.all(8),
//                           // color: Colors.green,
//                           child: Column(
//                             children: [
//                               Container(
//                                 child: Text(
//                                   'Brands',
//                                   style: GoogleFonts.arsenal(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 32),
//                                 ),
//                               ),
//                               Container(
//                                 child: Obx(
//                                   () => ListView(
//                                     shrinkWrap: true,
//                                     padding: EdgeInsets.all(8),
//                                     children: [
//                                       ...controller.names.map((checkbox) {
//                                         return controller
//                                             .buildSingleCheckBox(checkbox);
//                                       }).toList(),
//                                       // ...names.map((buildSingleCheckBox)).toList(),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         //Main Section
//                         Container(
//                           margin: EdgeInsets.all(8),
//                           width: MediaQuery.of(context).size.width * 0.75,
//                           child: Column(
//                             children: [
//                               //Text Section
//                               Container(
//                                 margin: EdgeInsets.only(top: 20),
//                                 child: const Text(
//                                   'Women Fregrance',
//                                   style: TextStyle(
//                                     fontFamily: "OdibeeSans",
//                                     fontSize: 36,
//                                   ),
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                               //Search Text Field
//                               Container(
//                                 margin: EdgeInsets.only(top: 10, bottom: 10),
//                                 child: const TextField(
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                         borderSide:
//                                             BorderSide(color: Colors.teal)),
//                                     hintText: 'Search for Product, a Brand',
//                                     helperText: 'Search Which Brand Or Product',
//                                     labelText: 'Search Brand',
//                                     prefixIcon: Icon(
//                                       Icons.person,
//                                       color: Colors.purpleAccent,
//                                     ),
//                                   ),
//                                 ),
//                                 // height: 100,
//                               ),
//                               //Grid Section Fields
//                               GridView.builder(
//                                   itemCount: data?.length,
//                                   shrinkWrap: true,
//                                   scrollDirection: Axis.vertical,
//                                   gridDelegate:
//                                       SliverGridDelegateWithFixedCrossAxisCount(
//                                           crossAxisCount: 5,
//                                           childAspectRatio: 0.6),
//                                   itemBuilder: (context, index) {
//                                     return Container(
//                                       height: 400,
//                                       child: EachItemWidgetStream(
//                                         title: data![index]['title'],
//                                         origin: data[index]['origin'],
//                                         source: data[index]['source'],
//                                         price_sale: data[index]['price_sale'],
//                                         regular_price: data[index]
//                                             ['regular_price'],
//                                         sex: data[index]['sex'],
//                                         image_url: data[index]['image_url']),
//                                       );
//                                   }),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 );
//               } else {
//                 return const CircularProgressIndicator();
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:perfume/controllers/perfumes_controller.dart';
// // import 'package:perfume/models/checkbox_state.dart';
// // import 'package:perfume/widgets/app_bar.dart';
// // import 'package:perfume/widgets/each_item_widget.dart';
// //
// // class PerfumesPage extends GetView<PerfumesController> {
// //   PerfumesPage({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBarWidget(),
// //       body: Container(
// //         child: SingleChildScrollView(
// //           child: Column(
// //             children: [
// //               Row(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   //Filter Section
// //                   Container(
// //                     decoration: BoxDecoration(
// //                       // color: Colors.white,
// //                       borderRadius: BorderRadius.only(
// //                           topLeft: Radius.circular(10),
// //                           topRight: Radius.circular(10),
// //                           bottomLeft: Radius.circular(10),
// //                           bottomRight: Radius.circular(10)),
// //                       boxShadow: [
// //                         BoxShadow(
// //                           color: Colors.grey.withOpacity(0.1),
// //                           spreadRadius: 5,
// //                           blurRadius: 7,
// //                           offset: Offset(0, 3), // changes position of shadow
// //                         ),
// //                       ],
// //                     ),
// //                     width: MediaQuery.of(context).size.width * 0.2,
// //                     margin: EdgeInsets.all(8),
// //                     // color: Colors.green,
// //                     child: Column(
// //                       children: [
// //                         Container(
// //                           child: Text(
// //                             'Brands',
// //                             style: GoogleFonts.arsenal(
// //                                 fontWeight: FontWeight.bold, fontSize: 32),
// //                           ),
// //                         ),
// //                         Container(
// //                           child: Obx(
// //                             () => ListView(
// //                               shrinkWrap: true,
// //                               padding: EdgeInsets.all(8),
// //                               children: [
// //                                 ...controller.names.map((checkbox) {
// //                                   return controller
// //                                       .buildSingleCheckBox(checkbox);
// //                                 }).toList(),
// //                                 // ...names.map((buildSingleCheckBox)).toList(),
// //                               ],
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                   //Main Section
// //                   Container(
// //                     margin: EdgeInsets.all(8),
// //                     width: MediaQuery.of(context).size.width * 0.75,
// //                     // height: 1000,
// //                     // color: Colors.red,
// //                     child: Column(
// //                       children: [
// //                         //Text Section
// //                         Container(
// //                           margin: EdgeInsets.only(top: 20),
// //                           child: const Text(
// //                             'Women Fregrance',
// //                             style: TextStyle(
// //                               fontFamily: "OdibeeSans",
// //                               fontSize: 36,
// //                             ),
// //                             textAlign: TextAlign.center,
// //                           ),
// //                         ),
// //                         //Search Text Field
// //                         Container(
// //                           margin: EdgeInsets.only(top: 10, bottom: 10),
// //                           child: const TextField(
// //                             decoration: InputDecoration(
// //                               border: OutlineInputBorder(
// //                                   borderSide: BorderSide(color: Colors.teal)),
// //                               hintText: 'Search for Product, a Brand',
// //                               helperText: 'Search Which Brand Or Product',
// //                               labelText: 'Search Brand',
// //                               prefixIcon: Icon(
// //                                 Icons.person,
// //                                 color: Colors.purpleAccent,
// //                               ),
// //                             ),
// //                           ),
// //                           // height: 100,
// //                         ),
// //                         //Grid Section Fields
// //                         GridView.builder(
// //                             itemCount: 43,
// //                             shrinkWrap: true,
// //                             scrollDirection: Axis.vertical,
// //                             gridDelegate:
// //                                 SliverGridDelegateWithFixedCrossAxisCount(
// //                                     crossAxisCount: 5, childAspectRatio: 0.6),
// //                             itemBuilder: (context, index) {
// //                               return Container(
// //                                 height: 400,
// //                                 child: EachItemWidget(),
// //                               );
// //                             }),
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// //
// //
// //
