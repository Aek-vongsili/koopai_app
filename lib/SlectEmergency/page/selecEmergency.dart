import 'package:app1623/homscreen/HomeScreenpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../complete The Emergency/page/Compleat_Health Emergency.dart';
import '../../complete The Emergency/page/Compleat_RoadExchildent.dart';

class SelectEmergency extends StatefulWidget {
  const SelectEmergency({super.key});

  @override
  State<SelectEmergency> createState() => _SelectEmergencyState();
}

class _SelectEmergencyState extends State<SelectEmergency> {
  bool _isInitialValue = true;
  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFEEEDF0),
      body: SingleChildScrollView(
        // padding: EdgeInsets.only(left: 20,right: 20,top: 40,bottom: 40),
        child: Center(
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 2),
                color: Color(0xffEEEDF0),
                transform: _isInitialValue
                    ? Matrix4.identity()
                    : Matrix4.rotationX((45)),
                child: Container(
                  
                    margin: EdgeInsets.only(
                        left: 20, right: 20, top: 50, bottom: 27),
                    height: Get.height*.90,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Positioned(
                            right: 220,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 300, top: 20),
                              child: Stack(
                                children: [
                                  Container(
                                    child: Image.asset('icons/Group 13.png'),
                                  )
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomSreenpage()));
                          },
                        ),
                        SizedBox(height: 0),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 24)),
                            Text('Select the',
                                style: TextStyle(
                                    fontSize: 44, color: Color(0xFF555555))),
                          ],
                        ),
                        SizedBox(height: 0),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 24)),
                            Text('Emergency',
                                style:
                                    TextStyle(fontSize: 44, color: Colors.red)),
                          ],
                        ),
                        SizedBox(height: 20),
                       Container(
                        height: Get.height*.68,
                        color: Colors.white,
                        child: SingleChildScrollView(
                          child: Column(
                              children: [
                                 Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                       left: 20,
                                      top: 50,
                                    ),
                                    height: 169,
                                    width: 155,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          width: 2,
                                          color: Color(0xFFEEEDF0),
                                        ),
                                        color: Color(0xffFFEBEB)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('icons/Group 50.png'),
                                        Text('Road',
                                            style: TextStyle(
                                                fontSize: 20, color: Colors.red)),
                                        Text('Accident',
                                            style: TextStyle(
                                                fontSize: 20, color: Colors.red)),
                                      ],
                                    ),
                                  ),
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>Road_accident()));
                                  },
                                ),
                                GestureDetector(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      right: 20,
                                 
                                      top: 50,
                                    ),
                                    height: 169,
                                    width: 155,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          width: 2,
                                          color: Color(0xffFFEBEB),
                                        ),
                                        color: Color(0xffFFEBEB)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('icons/Group 47.png'),
                                        Text('Health',
                                            style: TextStyle(
                                                fontSize: 20, color: Colors.red)),
                                        Text('Accident',
                                            style: TextStyle(
                                                fontSize: 20, color: Colors.red)),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                              Health_emercy() ));
                                  },
                                ),
                              ],
                            ),
                          ),
                        
                        
                        
                        
                        
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                child: Container(
                                  margin: EdgeInsets.only(
                                  left: 20,
                                    top: 21
                                  
                                  ),
                                  height: 169,
                                  width: 155,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        width: 2,
                                        color: Color(0xFFEEEDF0),
                                      ),
                                      color: Color(0xffFFEBEB)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('icons/Fire.png'),
                                      Text('Fire',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red)),
                                      Text('Emergency',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red)),
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>Road_accident()));
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  margin: EdgeInsets.only(
                                    right:20,
                                    left: 20,
                                    top: 15
                                    
                                  ),
                                  height: 169,
                                  width: 155,
                                  
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        width: 2,
                                        color: Color(0xffFFEBEB),
                                      ),
                                      color: Color(0xffFFEBEB)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('icons/Drowning.png'),
                                      Text('Drowning',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red)),
                                      Text('Emergency',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red)),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                            Health_emercy() ));
                                },
                              ),
                            ],
                          ),
                        //////////////////////////////////
                        ///
                        ///
                        ///
                        ///
                        ///
                        
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                child: Container(
                                  margin: EdgeInsets.only(
                                  left: 20,
                                    top: 21
                                  
                                  ),
                                  height: 169,
                                  width: 155,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        width: 2,
                                        color: Color(0xFFEEEDF0),
                                      ),
                                      color: Color(0xffFFEBEB)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('icons/carhost.png'),
                                      Text('Ambolance',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red)),
                                      Text('Service',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red)),
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>Road_accident()));
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  margin: EdgeInsets.only(
                                    right:20,
                                    left: 20,
                                    top: 15
                                    
                                  ),
                                  height: 169,
                                  width: 155,
                                  
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        width: 2,
                                        color: Color(0xffFFEBEB),
                                      ),
                                      color: Color(0xffFFEBEB)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('icons/Group 109.png'),
                                      Text('Insurance',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red)),
                                      Text('Seurvice',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red)),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                            Health_emercy() ));
                                },
                              ),
                            ],
                          ),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                child: Container(
                                  margin: EdgeInsets.only(
                                  left: 20,
                                    top: 21
                                  
                                  ),
                                  height: 169,
                                  width: 155,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        width: 2,
                                        color: Color(0xFFEEEDF0),
                                      ),
                                      color: Color(0xffFFEBEB)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('icons/Fire.png'),
                                      Text('Towtruck',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red)),
                                      Text('Service',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red)),
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>Road_accident()));
                                },
                              ),
                              
                            ],
                          )

                              ],
                            ),
                        ),
                        
                       ),
                        SizedBox(height: 2),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
