import 'package:app1623/homscreen/homepage.dart';
import 'package:app1623/login&signout/page/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class checkconfrime_user extends StatefulWidget {
  const checkconfrime_user({super.key});

  @override
  State<checkconfrime_user> createState() => _checkconfrime_userState();
}

class _checkconfrime_userState extends State<checkconfrime_user> {
  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('ກວດສອບການລົງທະບຽນ',
              style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold)),
        ),
        elevation: 0,
        backgroundColor:  Color(0xFF293275),
        
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 80),
                height: 80,
                width: 300,
                child: Column(
                  children: [
                    Text('ການສະໝັກສະມາຊິກ',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF293275))),
                    Text(
                      'ເກືອບຈະສຳເລັດແລ້ວ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF293275)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 280,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                    ),
                    color: Color(0xFF293275)),
                child: Center(
                  child: Text('ກະລຸນາລໍຖ້າການກວດສອບ!',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ), 
                    SizedBox(height: 20),Center(
                child: Text('ຂໍຂອບໃຈ',style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF293275)),),
              ),
              SizedBox(height: screenw * 0.4),
              GestureDetector(
                child: Container(
                  height: 60,
                  width: screenw * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF293275)),
                  child: Center(
                    child: Text(
                      'ກັບຄຶນສູ່ໜ້າຫຼັກ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
