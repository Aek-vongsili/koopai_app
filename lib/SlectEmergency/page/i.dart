// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class go extends StatefulWidget {
//   const go({super.key});

//   @override
//   State<go> createState() => _goState();
// }

// class _goState extends State<go> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(children: [
//         Column(
//                             children: [
//                                Container(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               GestureDetector(
//                                 // child: Container(
//                                   margin: EdgeInsets.only(
//                                      left: 20,
//                                     top: 50,
//                                   ),
//                                   height: 169,
//                                   width: 155,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       border: Border.all(
//                                         width: 2,
//                                         color: Color(0xFFEEEDF0),
//                                       ),
//                                       color: Color(0xffFFEBEB)),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Image.asset('icons/Group 50.png'),
//                                       Text('Road',
//                                           style: TextStyle(
//                                               fontSize: 20, color: Colors.red)),
//                                       Text('Accident',
//                                           style: TextStyle(
//                                               fontSize: 20, color: Colors.red)),
//                                     ],
//                                   ),
//                                 ),
//                                 onTap: (){
//                                   Navigator.push(context, MaterialPageRoute(builder: (builder)=>Road_accident()));
//                                 },
//                               ),
//                               GestureDetector(
//                                 child: Container(
//                                   margin: EdgeInsets.only(
//                                     right: 20,
                               
//                                     top: 50,
//                                   ),
//                                   height: 169,
//                                   width: 155,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       border: Border.all(
//                                         width: 2,
//                                         color: Color(0xffFFEBEB),
//                                       ),
//                                       color: Color(0xffFFEBEB)),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Image.asset('icons/Group 47.png'),
//                                       Text('Health',
//                                           style: TextStyle(
//                                               fontSize: 20, color: Colors.red)),
//                                       Text('Accident',
//                                           style: TextStyle(
//                                               fontSize: 20, color: Colors.red)),
//                                     ],
//                                   ),
//                                 ),
//                                 onTap: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) =>
//                                             Health_emercy() ));
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),





//                          Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             GestureDetector(
//                               child: Container(
//                                 margin: EdgeInsets.only(
//                                 left: 20,
//                                   top: 21
                                
//                                 ),
//                                 height: 169,
//                                 width: 155,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10),
//                                     border: Border.all(
//                                       width: 2,
//                                       color: Color(0xFFEEEDF0),
//                                     ),
//                                     color: Color(0xffFFEBEB)),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Image.asset('icons/Fire.png'),
//                                     Text('Fire',
//                                         style: TextStyle(
//                                             fontSize: 20, color: Colors.red)),
//                                     Text('Emergency',
//                                         style: TextStyle(
//                                             fontSize: 20, color: Colors.red)),
//                                   ],
//                                 ),
//                               ),
//                               onTap: (){
//                                 Navigator.push(context, MaterialPageRoute(builder: (builder)=>Road_accident()));
//                               },
//                             ),
//                             GestureDetector(
//                               child: Container(
//                                 margin: EdgeInsets.only(
//                                   right:20,
//                                   left: 20,
//                                   top: 15
                                  
//                                 ),
//                                 height: 169,
//                                 width: 155,
                                
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10),
//                                     border: Border.all(
//                                       width: 2,
//                                       color: Color(0xffFFEBEB),
//                                     ),
//                                     color: Color(0xffFFEBEB)),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Image.asset('icons/Drowning.png'),
//                                     Text('Drowning',
//                                         style: TextStyle(
//                                             fontSize: 20, color: Colors.red)),
//                                     Text('Emergency',
//                                         style: TextStyle(
//                                             fontSize: 20, color: Colors.red)),
//                                   ],
//                                 ),
//                               ),
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                           Health_emercy() ));
//                               },
//                             ),
//                           ],
//                         ),

//                          Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             GestureDetector(
//                               child: Container(
//                                 margin: EdgeInsets.only(
//                                 left: 20,
//                                   top: 21
                                
//                                 ),
//                                 height: 169,
//                                 width: 155,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10),
//                                     border: Border.all(
//                                       width: 2,
//                                       color: Color(0xFFEEEDF0),
//                                     ),
//                                     color: Color(0xffFFEBEB)),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Image.asset('icons/Fire.png'),
//                                     Text('Fire',
//                                         style: TextStyle(
//                                             fontSize: 20, color: Colors.red)),
//                                     Text('Emergency',
//                                         style: TextStyle(
//                                             fontSize: 20, color: Colors.red)),
//                                   ],
//                                 ),
//                               ),
//                               onTap: (){
//                                 Navigator.push(context, MaterialPageRoute(builder: (builder)=>Road_accident()));
//                               },
//                             ),
//                             GestureDetector(
//                               child: Container(
//                                 margin: EdgeInsets.only(
//                                   right:20,
//                                   left: 20,
//                                   top: 15
                                  
//                                 ),
//                                 height: 169,
//                                 width: 155,
                                
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10),
//                                     border: Border.all(
//                                       width: 2,
//                                       color: Color(0xffFFEBEB),
//                                     ),
//                                     color: Color(0xffFFEBEB)),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Image.asset('icons/Drowning.png'),
//                                     Text('Drowning',
//                                         style: TextStyle(
//                                             fontSize: 20, color: Colors.red)),
//                                     Text('Emergency',
//                                         style: TextStyle(
//                                             fontSize: 20, color: Colors.red)),
//                                   ],
//                                 ),
//                               ),
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                           Health_emercy() ));
//                               },
//                             ),
//                           ],
//                         )
//                             ],
//                           )
//       ],),
//     );
//   }
// }
