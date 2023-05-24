import 'package:app1623/homscreen/homepage.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 150),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Color(0xFF293275)),
                child: Image.asset(
                  'images/logo_app.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text(
                  'EMR Ambulance App',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color(0xFF293275)),
                ),
              ),
              Container(
                child: Text(
                  'ແອບແຈ້ງອຸບັດຕິເຫດ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                     color: Color(0xFF293275)),
                ),
              ),
              SizedBox(height: 50),
              Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Color(0xFF293275)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text('User'),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Color(0xFF293275)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text('Password'),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF293275)),
                  child: Center(
                    child: Text(
                      'signIn',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Hompage()));
                },
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 80),
                width: 300,
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        'do you have an account',
                        style: TextStyle(
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                             fontWeight: FontWeight.bold,
                           color: Color(0xFF293275)),
                      ),
                      GestureDetector(
                        child: Text(
                          '& Register now!',
                          style: TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF293275)),
                        ),
                        onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
