import 'package:app1623/Rescued/page/Rescued.dart';
import 'package:app1623/homscreen/HomeScreenpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../SlectEmergency/page/selecEmergency.dart';

class submited extends StatefulWidget {
  const submited({super.key});

  @override
  State<submited> createState() => _submitedState();
}

class _submitedState extends State<submited> {
  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xffEEEDF0),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 50, left: 24, right: 22),
            height: 846,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  height: 699,
                  width: screenw,
                  decoration: BoxDecoration(
                      color: Color(0xffEF3939),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      GestureDetector(
                        child: Positioned(
                          right: 220,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 300, top: 20),
                            child: Stack(
                              children: [
                                Container(
                                  child: Image.asset('icons/icon_closepng.png'),
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(height: 179),
                      Row(
                        children: [
                          Container(
                            width: 87,
                            height: 87,
                            margin: EdgeInsets.only(left: 20),
                            child: Image.asset(
                                'icons/Icon ionic-md-checkmark-circle-outline.png'),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 53,
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Submitted',
                              style: TextStyle(
                                  fontSize: 44,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Your Emegency Request has been sent',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 27, top: 26),
                            child: Text('Emergency Number')),
                        Container(
                            margin:
                                EdgeInsets.only(left: 27, top: 26, right: 24),
                            child: Text('Date&Time')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                              left: 27,
                            ),
                            child: Text(
                              '#00122',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            )),
                        Container(
                          margin: EdgeInsets.only(left: 27, right: 24),
                          child: Text(
                            '18/7/2023 15:28',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 26),
                GestureDetector(
                  child: Container(
                    height: 48,
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffEF3939),
                    ),
                    child: Center(
                        child: Text(
                      'Done',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => MapSample()));
                    
                  },
                )
              ],
            ),
          ),
        ));
  }
}
