import 'package:app1623/homscreen/HomeScreenpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Log extends StatefulWidget {
  const Log({super.key});

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  double _p = 0;
  bool status = true;
  void _onTap() => setState(() {
        status = !status;
        status == false ? _p = 1 : _p = 0;
      });
  bool _isInitialValue = true;
  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedContainer(
                duration: const Duration(milliseconds: 5),
                color: Color(0xffEEEDF0),
                transform: _isInitialValue
                    ? Matrix4.identity()
                    : Matrix4.rotationX((45)),
                child: Container(
                    margin: EdgeInsets.only(
                        left: 24, right: 24, top: 50, bottom: 27),
                    height: 750,
                    width: 382,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Padding(
                        padding:
                            const EdgeInsets.only(left: 24, right: 24, top: 33),
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                'Ativity Log',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.grey),
                              ),
                            ),
                            SizedBox(height: 45),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Emergency Number: #00122'),
                                      Text('Status'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Yesterday 16:34'),
                                      Text(
                                        'Completed',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Description: Car Accident'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 32),
                            Container(
                                child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('24/5/23 16:34'),
                                    Text('Status'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Emergency Number: #00121'),
                                    Text('Denied',
                                        style: TextStyle(color: Colors.red)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Description: Car Accident'),
                                  ],
                                )
                              ],
                            ))
                          ],
                        )),
                        )),
          ],
        ),
      ),
    );
    // return Scaffold(
    //     backgroundColor: Color(0xffEEEDF0),

    //     body: SingleChildScrollView(
    //         child: Center(
    //             child: Container(
    //       margin: EdgeInsets.only(left: 24, right: 24, top: 50, bottom: 27),
    //       height: 750,
    //       width: 382,
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(15),
    //         color: Colors.white,
    //       ),
    //       child: Padding(
    //         padding: const EdgeInsets.only(left: 24, right: 24, top: 33),
    //         child: Column(
    //           children: [
    //             Center(
    //               child: Text(
    //                 'Ativity Log',
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 20,
    //                     color: Colors.grey),
    //               ),
    //             ),
    //             SizedBox(height: 45),
    //             Container(
    //               child: Column(
    //                 children: [
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text('Emergency Number: #00122'),
    //                       Text('Status'),
    //                     ],
    //                   ),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text('Yesterday 16:34'),
    //                       Text(
    //                         'Completed',
    //                         style: TextStyle(color: Colors.green),
    //                       ),
    //                     ],
    //                   ),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text('Description: Car Accident'),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             SizedBox(height: 32),
    //             Container(
    //               child: Column(
    //                 children: [
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text('24/5/23 16:34'),
    //                       Text('Status'),
    //                     ],
    //                   ),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text('Emergency Number: #00121'),
    //                       Text('Denied', style: TextStyle(color: Colors.red)),
    //                     ],
    //                   ),
    //                   Row(
    //                     children: [
    //                       Text('Description: Car Accident'),
    //                     ],
    //                   )
    //                 ],
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     ))));
  }
}
