import 'package:app1623/homscreen/HomeScreenpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'package:sms_autofill/sms_autofill.dart';

import '../../submitted/page/submitted.dart';

class OTP_request extends StatefulWidget {
  const OTP_request({
    super.key,
  });

  @override
  State<OTP_request> createState() => _OTP_requestState();
}

class _OTP_requestState extends State<OTP_request> {
  String _code = "";

  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Positioned(
                  child: Container(
                padding: EdgeInsets.only(),
                height: 45,
                child: Text(
                  'KOOPHAI',
                  style: TextStyle(
                      fontSize: 70, color: Color.fromARGB(255, 173, 13, 13)),
                ),
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 584,
                    width: screenw,
                    decoration: BoxDecoration(
                        color: Color(0xffEF3939),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Stack(children: [
                          Image.asset(
                            'images/RESCUE-TRUCK.png',
                            width: screenw,
                            height: 584,
                            fit: BoxFit.cover,
                          ),
                          Positioned(child: Container(
                              padding: EdgeInsets.only(left: 70, top: 250,),
                            child: Container(
                              child: Text('KOOPAI', style: TextStyle(
                                fontSize: 69,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),),
                            ),
                          ))
                        ])),
                  ),
                  SizedBox(height: 52),
                  Text(
                    'OTP Verification',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff555555)),
                  ),
                  SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.only(left: 27, right: 27),
                    child: Container(
                        child: OtpTextField(
                      textStyle: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      numberOfFields: 6,
                      borderWidth: 0,
                      fillColor: Color(0xffFFEBEB),
                      filled: true,
                      fieldWidth: 51,
                      borderRadius: BorderRadius.circular(10),
                      keyboardType: TextInputType.number,
                    )),
                  ),
                  SizedBox(height: 37),
                  GestureDetector(
                    child: Container(
                      height: 48,
                      width: 384,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0XFFfE2430),
                      ),
                      child: Center(
                        child: Text(
                          'Confirme',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomSreenpage()));
                      (Route) => true;

                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Colors.white,
                            content: Container(
                              height: 205,
                              width: 382,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Column(
                                  
                                  children: [
                                    
                                   Container(
                                    alignment: Alignment.center,
                                    height: 60,
                                   
                                    margin: EdgeInsets.only(bottom:40),
                                    child: Text("Allow Location Access",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff293275),
                                      ),
                                    )),

                                    // Center(
                                    //     child: Image.asset(
                                    //   'icons/Group 17.png',
                                    //   width: 70,
                                    //   height: 70,
                                    // )),
                                  ],
                                ),
                              ),
                            ),
                            actions: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 20, left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        margin: EdgeInsets.only(top: 20),
                                        height: 48,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color(0xffFE2430)),
                                        child: Center(
                                          child: Text(
                                            'Allow',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        margin: EdgeInsets.only(top: 20),
                                        height: 48,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color(0xffFFEBEB)),
                                        child: Center(
                                          child: Text(
                                            'Deny',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xffFE2430)),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
