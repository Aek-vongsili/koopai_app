import 'package:app1623/Get_OTP/page/otp_request.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    final phoneController = TextEditingController();

    @override
    void dispose() {
      phoneController.dispose();
      super.dispose();
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
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
                    child: Stack(
                      children: [
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
                          child: const Text(
                            'KOOPAI',
                            style: TextStyle(
                                fontSize: 69,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ))
                      ],
                    )),
              ),
              const SizedBox(height: 52),
              const Text(
                'Login',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff555555)),
              ),
              const SizedBox(height: 17),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 40, top: 17)),
                  Text(
                    'Phone Number',
                    style: TextStyle(fontSize: 15, color: Color(0xff555555)),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 23, right: 23),
                height: 48,
                width: 384,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: const Color(0xFF293275)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                        label: Row(
                          children: [
                            Image.asset('images/laologo.png'),
                            const Text(
                              '+856',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            )
                          ],
                        ),
                        border: InputBorder.none),
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
                        'Get OTP',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OTP_request(
                               phoneNumber:phoneController.text
                              )))),
            ],
          ),
        ),
      ),
    );
  }
}
