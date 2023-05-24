// import 'package:app1623/data/dumyshop.dart';
// import 'package:app1623/homscreen/acCildent_image.dart';
// import 'package:app1623/homscreen/homepage.dart';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:get/get.dart';

// class ammulanc extends StatefulWidget {
//   const ammulanc({super.key});

//   @override
//   State<ammulanc> createState() => _ammulancState();
// }

// class _ammulancState extends State<ammulanc> {
//   Position? _currentUserPosition;
//   double? distanceImMeter = 0.0;
//   Data data = Data();

//   Future _getTheDistance() async {
//     _currentUserPosition = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);

//     for (int i = 0; i < data.allstores.length; i++) {
//       double storelat = data.allstores[i]['lat'];
//       double storelng = data.allstores[i]['lng'];

//       distanceImMeter = await Geolocator.distanceBetween(
//         _currentUserPosition!.latitude,
//         _currentUserPosition!.longitude,
//         storelat,
//         storelng,
//       );
//       var distance = distanceImMeter?.round().toInt();

//       data.allstores[i]['distance'] = (distance! / 100);
//       setState(() {});
//     }
//   }

//   @override
//   void initState() {
//     _getTheDistance();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double screenw = MediaQuery.of(context).size.width;
//     double screenh = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(
//           child: Text('ListAmmulance',
//               style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white)),
//         ),
//         elevation: 0,
//         backgroundColor: Color(0xFF293275),
//         leading: GestureDetector(
//           child: const Icon(
//             Icons.arrow_back_ios,
//             size: 30,
//             color: Colors.white,
//           ),
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (rr) => const accident_image()));
//           },
//         ),
//         actions: [
//           IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
//         ],
//       ),
//       body: SingleChildScrollView(
//           child: Column(
//         children: List.generate(
//             data.allstores.length,
//             (index) => Column(
//                   children: [
//                     GestureDetector(
//                       child: Container(
//                         margin:
//                             const EdgeInsets.only(top: 20, left: 20, right: 20),
//                         height: 60,
//                         width: screenw,
//                         decoration: BoxDecoration(
//                             border: Border.all(
//                               width: 1,
//                               color: const Color(0xff293275),
//                             ),
//                             borderRadius: BorderRadius.circular(5)),
//                         child: Center(
//                           child: Column(
//                             children: [
//                               Text(
//                                 data.allstores[index]['name'],
//                                 style: const TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color(0xff293275),
//                                 ),
//                               ),
//                               const SizedBox(height: 5),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   const Icon(
//                                     Icons.location_on,
//                                     color: Colors.pink,
//                                   ),
//                                   Text(
//                                     "${data.allstores[index]['distance'].round()} KM Away",
//                                     style: const TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                       color: Color(0xff293275),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       onTap: () {
//                         showDialog(
//                           context: context,
//                           builder: (BuildContext context) {
//                             return AlertDialog(
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20)),
//                               backgroundColor: Colors.white,
//                               // title: Center(
//                               //     child: Text(
//                               //   "ແຈ້ງເຕືອນ.,",
//                               //   style: TextStyle(
//                               //     fontSize: 16,
//                               //     color: Color(0xff293275),
//                               //     fontWeight: FontWeight.bold,
//                               //   ),
//                               // )),
//                               content: Container(
//                                 height: 150,
//                                 width: 300,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20)),
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       "ການແຈ້ງເຫດ ສຳເລັດແລ້ວ...!",
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold,
//                                         color: Color(0xff293275),
//                                       ),
//                                     ),
//                                     Center(
//                                       child: ClipRRect(
//                                           borderRadius:
//                                               BorderRadius.circular(150),
//                                           child: Image.asset(
//                                             'icons/verify.gif',
//                                             width: 120,
//                                             height: 120,
//                                           )),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               actions: [
//                                 TextButton(
//                                   child: Text(
//                                     "ຕົກລົງ",
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                       color: Color(0xff293275),
//                                     ),
//                                   ),
//                                   onPressed: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => Hompage()));
//                                   },
//                                 ),
//                               ],
//                             );
//                           },
//                         );
//                       },
//                     )
//                   ],
//                 )),
//       )),
//     );
//   }
// }
