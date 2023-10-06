import 'package:app1623/Get_OTP/page/otp_request.dart';
import 'package:app1623/register/page/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

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
                decoration: BoxDecoration(
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
                          'images/RESCUE-TRUCK.png',width:screenw,height: 584,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                            child: Container(
                          padding: EdgeInsets.only(left: 70, top: 250,),
                          child: Text(
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
              SizedBox(height: 52),
              Text(
                'Login',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff555555)),
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 40, top: 17)),
                  Text(
                    'Phone Number',
                    style: TextStyle(fontSize: 15, color: Color(0xff555555)),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 23, right: 23),
                height: 48,
                width: 384,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Color(0xFF293275)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Row(
                          children: [
                            Image.asset('images/laologo.png'),
                            Text(
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
                      'Get OTP',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OTP_request()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
