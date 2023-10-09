import 'dart:ffi';

import 'package:app1623/homscreen/HomeScreenpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OTP_request extends StatefulWidget {
  final String phoneNumber;
  const OTP_request({
    super.key,
    required this.phoneNumber,
  });

  @override
  State<OTP_request> createState() => _OTP_requestState();
}

class _OTP_requestState extends State<OTP_request> {
  String _verifyCode = "";
  late String otp_code = "";
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    requestVerifyCode();
  }

  requestVerifyCode() async {
    await auth.verifyPhoneNumber(
        phoneNumber: "+856" + widget.phoneNumber,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (firebaseUser) {
          //
        },
        verificationFailed: (error) {
          print(
              'Phone number verification failed. Code: ${error.code}. Message: ${error.message}');
        },
        codeSent: (String verificationId, int? resendToken) {
          setState(() {
            _verifyCode = verificationId;
          });
          print(verificationId);
        },
        codeAutoRetrievalTimeout: (verificationId) {
          //
        });
  }

  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    print(widget.phoneNumber);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Positioned(
                  child: Container(
                padding: const EdgeInsets.only(),
                height: 45,
                child: const Text(
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
                    decoration: const BoxDecoration(
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
                          Positioned(
                              child: Container(
                            padding: const EdgeInsets.only(
                              left: 70,
                              top: 250,
                            ),
                            child: Container(
                              child: const Text(
                                'KOOPAI',
                                style: TextStyle(
                                    fontSize: 69,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ))
                        ])),
                  ),
                  const SizedBox(height: 52),
                  const Text(
                    'OTP Verification',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff555555)),
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.only(left: 27, right: 27),
                    child: Container(
                      //     child: OtpTextField(
                      //   textStyle: const TextStyle(
                      //       color: Colors.blue,
                      //       fontSize: 18,
                      //       fontWeight: FontWeight.bold),
                      //   numberOfFields: 6,
                      //   borderWidth: 0,
                      //   fillColor: const Color(0xffFFEBEB),
                      //   filled: true,
                      //   fieldWidth: 51,
                      //   borderRadius: BorderRadius.circular(10),
                      //   keyboardType: TextInputType.number,
                      //   autoFocus: true,
                      //   onCodeChanged: (value) async => {
                      //     if (value.length == 5) {print("success")}
                      //   },

                      // )
                      child: PinFieldAutoFill(
                        decoration: UnderlineDecoration(
                          gapSpace: 10,
                          textStyle: TextStyle(
                              color: Colors.grey.shade800,
                              fontFamily: 'branding4',
                              fontSize: 18),
                          lineHeight: 1,
                          lineStrokeCap: StrokeCap.square,
                          bgColorBuilder: PinListenColorBuilder(
                              const Color(0xffFFEBEB), const Color(0xffFFEBEB)),
                          colorBuilder: const FixedColorBuilder(Colors.red),
                        ),
                        codeLength: 6,
                        autoFocus: true,
                        onCodeChanged: (value) async {
                          if (value!.length.toInt() == 6) {
                            try {
                              PhoneAuthCredential phoneAuth =
                                  PhoneAuthProvider.credential(
                                      verificationId: _verifyCode,
                                      smsCode: value);

                              var info =
                                  await auth.signInWithCredential(phoneAuth);
                              print("Success${phoneAuth}${info}");
                            } catch (err) {
                              print(err);
                            }
                          }
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 37),
                  GestureDetector(
                    child: Container(
                      height: 48,
                      width: 384,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFFfE2430),
                      ),
                      child: const Center(
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const HomSreenpage()));
                      // (Route) => true;

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
                                        margin:
                                            const EdgeInsets.only(bottom: 40),
                                        child: const Text(
                                          "Allow Location Access",
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
                                        margin: const EdgeInsets.only(top: 20),
                                        height: 48,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: const Color(0xffFE2430)),
                                        child: const Center(
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
                                        margin: const EdgeInsets.only(top: 20),
                                        height: 48,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: const Color(0xffFFEBEB)),
                                        child: const Center(
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
