import 'package:app1623/Profile/page/profile.dart';
import 'package:app1623/homscreen/acCildent_image.dart';
import 'package:app1623/testapp/allstall.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class Hompage extends StatefulWidget {
  const Hompage({super.key});
  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Color(0xFFEEEDF0),
        bottomNavigationBar: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(right: 24, left: 24),
          child: Container(
            height: 80,
            width: screenw,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  width: 136,
                  height: 51,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFE2430)),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        'icons/Group 4.png',
                        color: Colors.white,
                        width: 27,
                        height: 26.74,
                      ),
                      label: Text(
                        'Home',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
                IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ));
                    },
                    icon: Image.asset('icons/Group 6.png', color: Colors.grey)),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('icons/Group 8.png', color: Colors.grey)),
                Builder(builder: (context) {
                  return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Image.asset('icons/Group 10.png',
                          color: Colors.grey));
                }),
              ],
            ),
          ),
        )),
        drawer: Drower(),
        body: SingleChildScrollView(
          child: Center(
            //##################profile ###############//
            child: Container(
              color: Color(0xFFEEEDF0),
              child: Column(
                children: [
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.only(top: 50),
                        height: 80,
                        width: 382,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 19),
                                  height: 56,
                                  width: 56,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(26)),
                                  child: Image.asset('images/profile.png'),
                                ),
                                SizedBox(width: 14),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Hello',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily:
                                                'fonts/bahnschrift_0.ttf',
                                            color: Color(0xFF555555))),
                                    Text('Kettakoun',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily:
                                                'fonts/bahnschrift_0.ttf',
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF555555))),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 19),
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2)),
                              child: Image.asset('icons/Group 13.png'),
                            ),
                          ],
                        )),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                  ),

                  //############# Message home ##################//
                  SizedBox(height: 47),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Are you in ',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'fonts/bahnschrift_0.ttf',
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF555555)),
                        ),
                        Text(
                          ' emergency ?',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'fonts/bahnschrift_0.ttf',
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFE2430)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Center(
                      child: Text(
                    'Please press button below',
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'fonts/bahnschrift_0.ttf',
                        color: Color(0xFF555555)),
                  )),
                  Center(
                    child: Text(
                      'to get help from rescue',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'fonts/bahnschrift_0.ttf',
                          color: Color(0xFF555555)),
                    ),
                  ),

                  //#################buttom active#######################//
                  SizedBox(height: 54),
                  Container(
                    width: 301,
                    height: 301,
                    color: Color(0xFFEEEDF0),
                    child: GestureDetector(
                      child: Container(
                        width: 301,
                        height: 301,
                        decoration: BoxDecoration(
                            gradient: RadialGradient(
                              colors: [
                                Color(0xFFFE2430),
                                Color(0xFFFE2430),
                                Color(0xFFFE2430),
                                Color(0xFFEEEDF0),
                              ],
                            ),
                            color: Color(0xFFEEEDF0)),
                        child: Center(
                          child: Text(
                            'SOS',
                            style: TextStyle(
                                fontSize: 87,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'fonts/bahnschrift_0.ttf',
                                color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => accident_image()));
                      },
                    ),
                  ),

//##########################  map Location containner ##############//
                  SizedBox(height: 85),
                  Container(
                    height: 106,
                    width: 382,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                  child:
                                      Image.asset('icons/Group 16 copy.png')),
                              Positioned(
                                  top: 25,
                                  left: 25,
                                  child: Image.asset('icons/Group 17.png'))
                            ],
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Your current address',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'fonts/bahnschrift_0.ttf',
                                    color: Color(0xFF555555)),
                              ),
                              Text(
                                'Phaxay, Sisattanak, Vientiane,',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'fonts/bahnschrift_0.ttf',
                                    color: Color(0xFF555555)),
                              ),
                              Text(
                                'Laos,',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'fonts/bahnschrift_0.ttf',
                                    color: Color(0xFF555555)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class Drower extends StatefulWidget {
  const Drower({super.key});

  @override
  State<Drower> createState() => _DrowerState();
}

class _DrowerState extends State<Drower> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xffEEEDF0),
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
