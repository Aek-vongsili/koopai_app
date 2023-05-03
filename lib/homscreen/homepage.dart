import 'package:app1623/Profile/profile.dart';
import 'package:app1623/homscreen/acCildent_image.dart';
import 'package:app1623/testapp/allstall.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class hompage extends StatefulWidget {
  const hompage({super.key});
  @override
  State<hompage> createState() => _hompageState();
}

class _hompageState extends State<hompage> {
  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff293275),
        leading: GestureDetector(
          child: Icon(
            Icons.person,
            size: 35,
            color: Colors.white,
          ),
          onTap: () {
             Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile()));
          
          },
        ),
        title: Center(
          child: Text(
            'ແຈ້ງອຸປະຕິເຫດ',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              child: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AllStores()));
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 50),
                color: Colors.white,
                child: Image.asset('images/logoindex.jpeg')),


            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 250,
                  width: screenw * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(190),
                      color: Colors.pink,
                      border: Border.all(width: 1, color: Color(0xff293275))),
                  child: Center(
                    child: Text(
                      'ກົດແຈ້ງອຸບັດເຫດ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => accident_image()));
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 60,
              width: screenw * 0.6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff293275)),
              child: Center(
                child: Text(
                  'ຕຶດຕາມ ສະຖານະການອຸບັດເຫດ',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
