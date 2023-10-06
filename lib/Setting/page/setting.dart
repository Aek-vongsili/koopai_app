import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Setting_app extends StatefulWidget {
  const Setting_app({super.key});

  @override
  State<Setting_app> createState() => _Setting_appState();
}

class _Setting_appState extends State<Setting_app> {
  bool _isInitialValue = true;
  @override
  Widget build(BuildContext context) {
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
                  margin:
                      EdgeInsets.only(left: 24, right: 24, top: 50, bottom: 27),
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
                              'Notifications',
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.red),
                                    ),
                                    SizedBox(width: 05),
                                    Text(
                                      'Yesterday 16:34',
                                      style:
                                          TextStyle(color: Color(0xffBFC4CE)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Your Emergency Number: #00122 Successfully',
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('rescued'),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.red),
                                  ),
                                  SizedBox(width: 05),
                                  Text('yesterday 16:34',style: TextStyle(color: Color(0xffBFC4CE)),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Emergency Number: #00121'),
                                  
                                     
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Recue team is on the way going to your?'),
                                ],
                              )
                            ],
                          )),
                           SizedBox(height: 32),
                          Container(
                              child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.red),
                                  ),
                                  SizedBox(width: 05),
                                  Text('24/05/23  16:36',style: TextStyle(color: Color(0xffBFC4CE)),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Your Emergency Number: #00121 hasbeen'),
                                  
                                     
                                ],
                              ),
                              Row(
                                children: [
                                  Text('accepted'),
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
  }
}
