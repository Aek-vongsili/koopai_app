import 'dart:io';
import 'package:app1623/Edit/Edit_ID.dart';
import 'package:app1623/Edit/Edit_name.dart';
import 'package:app1623/Edit/Edit_phone.dart';
import 'package:app1623/Log/page/log.dart';
import 'package:app1623/Setting/page/setting.dart';
import 'package:app1623/SlectEmergency/page/selecEmergency.dart';
import 'package:app1623/notication/page/Notication.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:image_picker/image_picker.dart';

class HomSreenpage extends StatefulWidget {
  const HomSreenpage({super.key});

  @override
  State<HomSreenpage> createState() => _HomSreenpageState();
}

class _HomSreenpageState extends State<HomSreenpage> {
  double _p = 0;
  bool status = true;
  void _onTap() => setState(() {
        status = !status;
        status == false ? _p = 1 : _p = 0;
      });
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Pageroute(),
    Log(),
    Setting_app(),
    Notication(),
  ];
  bool _isInitialValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEDF0),

/////################////////////////////

      /////##############/////////////////

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),

////###############//////////////////

        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              gap: 8,
              activeColor: Colors.white,
              iconSize: 240,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              duration: Duration(milliseconds: 100),
              tabBackgroundColor: Colors.red,
              color: Colors.black,
              tabs: [
                GButton(
                  borderRadius: BorderRadius.circular(10),
                  icon: Icons.home,
                  iconColor: Colors.grey,
                  iconSize: 30,
                  text: 'Home',
                ),
                GButton(
                  borderRadius: BorderRadius.circular(10),
                  icon: Icons.chat,
                  iconColor: Colors.grey,
                  iconSize: 30,
                  text: 'Chat',
                  onPressed: () {
                    setState(() {
                      _isInitialValue = !_isInitialValue;
                    });
                    _onTap();
                  },
                ),
                GButton(
                  borderRadius: BorderRadius.circular(10),
                  icon: Icons.notifications,
                  iconColor: Colors.grey,
                  iconSize: 30,
                  text: 'Noti',
                ),
                GButton(
                  borderRadius: BorderRadius.circular(10),
                  icon: Icons.settings,
                  iconColor: Colors.grey,
                  iconSize: 30,
                  text: 'Setting',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

//////////#####################################################################//////////////////////

class Pageroute extends StatefulWidget {
  const Pageroute({super.key});

  @override
  State<Pageroute> createState() => _PagerouteState();
}

class _PagerouteState extends State<Pageroute> {
  XFile? _image;
  late String urlImag;
  var imagepath;
  ImagePicker? picker = ImagePicker();
  List<CameraDescription> cameras = [];
  Future getimage1() async {
    final XFile? pickedFile = await picker!.pickImage(
      source: ImageSource.camera,
      maxWidth: 2000,
      maxHeight: 2000,
    );
    setState(() {
      _image = pickedFile!;
      imagepath = _image!.path;
    });
    //profileUser();
    //Get.to(Edit_account());
  }
///////////////////////

  double _p = 0;
  double _s = 0;
  bool status = true;
  bool select = true;

/////////////////////////

  void _onTap() => setState(() {
        status = !status;
        status == false ? _p = 1 : _p = 0;
      });
  ////////////

  void onTap() => setState(() {
        select = !select;
        select == false ? _s = 1 : _s = 0;
      });

  //////////////////////

  bool _isInitialValue = true;
  bool _isnitselectpage = true;

  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xFFEEEDF0),

        // drawer: Drower(),

        body: Stack(
          children: [
            SingleChildScrollView(
              child:
                  //##################Profile ###############//
                  Container(
                color: Color(0xffEEEDF0),
                child: Column(
                  children: [
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
                    SizedBox(height: 100),
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

                    Stack(children: [
                      Container(
                        width: 301,
                        height: 301,
                        color: Color(0xFFEEEDF0),
                        child: GestureDetector(
                          child: Container(
                            width: screenw*30,
                            height: screenh*30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                gradient: RadialGradient(
                                  colors: [
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectEmergency()));
                            
                          },
                        ),
                      ),
                    ]),

//##########################  map Location containner ##############//
                    SizedBox(height: 60),
                    GestureDetector(
                      child: Container(
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
                                          child: Image.asset(
                                              'icons/Group 16 copy.png')),
                                      Positioned(
                                          top: 25,
                                          left: 25,
                                          child:
                                              Image.asset('icons/Group 17.png'))
                                    ],
                                  ),
                                  SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Your current address',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily:
                                                'fonts/bahnschrift_0.ttf',
                                            color: Color(0xFF555555)),
                                      ),
                                      Text(
                                        'Phaxay, Sisattanak, Vientiane,',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily:
                                                'fonts/bahnschrift_0.ttf',
                                            color: Color(0xFF555555)),
                                      ),
                                      Text(
                                        'Laos,',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily:
                                                'fonts/bahnschrift_0.ttf',
                                            color: Color(0xFF555555)),
                                      )
                                    ],
                                  )
                                ],
                              ))),
                      onTap: () {
                       
                      },
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 10, right: 10),

                //####################Animetion profile######################//

                child: Stack(children: [
                  Container(
                    child: AnimatedContainer(
                      width: screenw,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      duration: Duration(milliseconds: 5),
                      height: status == true ? 80 : 750,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            transform: Matrix4.translationValues(_p, _p, 0),
                            child: status == true
                                ? Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      _image == null
                                          ? Container(
                                              margin: EdgeInsets.only(
                                                  left: 20, top: 10),
                                              height: status == false ? 60 : 56,
                                              width: status == false ? 60 : 56,
                                              child: Image.asset(
                                                'images/profile.png',
                                                fit: BoxFit.cover,
                                              ),
                                            )
                                          : Container(
                                              margin: EdgeInsets.only(
                                                  left: 20, top: 10),
                                              height: status == false ? 65 : 56,
                                              width: status == false ? 65 : 56,
                                              child: ClipRRect(
                                                  child: Image.file(
                                                      File(_image!.path))),
                                            ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Hello',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey)),
                                          Text(
                                            'Kettakoun',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff555555)),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                : Column(
                                    children: [
                                      _image == null
                                          ? Container(
                                              margin: EdgeInsets.only(top: 20),
                                              height:
                                                  status == false ? 100 : 56,
                                              width: status == false ? 100 : 56,
                                              child: Image.asset(
                                                'images/profile.png',
                                                fit: BoxFit.cover,
                                                height: 100,
                                                width: 100,
                                              ),
                                            )
                                          : Container(
                                              height:
                                                  status == false ? 100 : 56,
                                              width: status == false ? 100 : 56,
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  child: Image.file(
                                                      File(_image!.path))),
                                            ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Kettakoun',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff555555)),
                                      ),
                                      SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20, left: 20),
                                        child: Container(
                                          height: 50,
                                          width: screenw,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Name'),
                                              Text('Kettakoun'),
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Edit_name()));
                                                  },
                                                  icon: Icon(
                                                      Icons.arrow_forward_ios))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20, left: 20),
                                        child: Container(
                                          height: 50,
                                          width: screenw,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Surname'),
                                              Text('Kounlavong'),
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Edit_name()));
                                                  },
                                                  icon: Icon(
                                                      Icons.arrow_forward_ios))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20, left: 20),
                                        child: Container(
                                          height: 50,
                                          width: screenw,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Phone'),
                                              Text('+8562056555550'),
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Edit_phone()));
                                                  },
                                                  icon: Icon(
                                                      Icons.arrow_forward_ios))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Container(
                                          height: 50,
                                          width: screenw,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('ID or Passport'),
                                              Text('0561567'),
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    Edit_id()));
                                                  },
                                                  icon: Icon(
                                                      Icons.arrow_forward_ios))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        width: 336,
                                        height: 181,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Color(0xffEEEDF0),
                                        ),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                child: Image.asset(
                                                    'icons/Group 27.png'),
                                                onTap: () {
                                                  getimage1();
                                                },
                                              ),
                                              SizedBox(height: 14.75),
                                              Text(
                                                  'Take Your ID or Passport Photo')
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Container(
                                        height: 48,
                                        width: 334,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xffFFEBEB)),
                                        child: Center(
                                            child: Text('Logout',
                                                style: TextStyle(
                                                    color: Colors.red))),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        height: 48,
                                        width: 334,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xFFFE2430)),
                                        child: Center(
                                            child: Text(
                                          'Delete Account',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ],
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      left: 340,
                      child: status == true
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  _isInitialValue = !_isInitialValue;
                                });
                                _onTap();
                              },
                              icon: Image.asset('icons/Group 13.1.png'))
                          : IconButton(
                              onPressed: () {
                                setState(() {
                                  _isInitialValue = !_isInitialValue;
                                });
                                _onTap();
                              },
                              icon: Image.asset('icons/Group 13.png'))),
                  // Positioned(
                  //   left: 350,
                  //   child: IconButton(
                  //       onPressed: () {
                  //         setState(() {
                  //           _isInitialValue = !_isInitialValue;
                  //         });
                  //         _onTap();
                  //       },
                  //       icon: Image.asset("icons/Group 13.1.png")),
                  // )
                ]),
              ),
            )
          ],
        ));
  }
}
