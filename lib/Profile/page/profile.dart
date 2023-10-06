import 'dart:io';
import 'package:app1623/homscreen/HomeScreenpage.dart';
import 'package:app1623/login&signout/page/login.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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

  String dropdownvalue = 'Boy';
  var items = ['Boy', 'Girls', 'Other'];
  late DateTime date = DateTime.now();
  late var day = DateFormat('EEEE').format(date);
  late var dateday = DateFormat('MM/dd/yyyy').format(date);

  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffEEEDF0),
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
                    icon:
                        Image.asset('icons/Group 10.png', color: Colors.grey));
              }),
            ],
          ),
        ),
      )),
      // appBar: AppBar(
      //   leading: IconButton(
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //       icon: Icon(
      //         Icons.arrow_back_ios,
      //       )),
      //   backgroundColor: Color(0xFF293275),
      //   elevation: 0,
      //   title: Center(child: Text('ໂປຣຟາຍ')),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         Navigator.push(
      //             context, MaterialPageRoute(builder: (context) => Login()));
      //       },
      //       icon:  Text('Logout')
      //     )
      //   ],
      // ),

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 750,
            width: 382,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            margin: EdgeInsets.only(left: 24, right: 24, top: 50, bottom: 126),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 27),
                    height: 54,
                    width: screenw,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 19, left: 139, bottom: 20),
                      child: Container(
                        // color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Account Details',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff555555)),
                            ),
                            GestureDetector(
                              child: Image.asset(
                                'icons/Group 13.png',
                                width: 39,
                                height: 39,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomSreenpage()));
                              },
                            )
                          ],
                        ),
                      ),
                    )),

                SizedBox(height: 46),
                _image == null
                    ? GestureDetector(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: Image.asset('images/profile.png'),
                        ),
                        onTap: () {},
                      )
                    : Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.file(File(_image!.path))),
                      ),

                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 50,
                    width: screenw,
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Name'),
                        Text('Kettakoun'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 50,
                    width: screenw,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Surname'),
                        Text('Kounlavong'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                ),

                /////////////dropdown///////////////
                // Padding(
                //   padding: const EdgeInsets.only(left: 20, right: 20),
                //   child: Row(
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.only(),
                //         child: Container(
                //           height: 50,
                //           width: screenw * 0.2,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(10),
                //             border: Border.all(width: 1, color: Colors.grey),
                //           ),
                //           child: Padding(
                //             padding: EdgeInsets.only(left: 10),
                //             child: DropdownButton(
                //               value: dropdownvalue,
                //               icon: const Icon(Icons.keyboard_arrow_down),
                //               items: items.map((String items) {
                //                 return DropdownMenuItem(
                //                   value: items,
                //                   child: Text(items),
                //                 );
                //               }).toList(),
                //               onChanged: (String? newValue) {
                //                 setState(() {
                //                   dropdownvalue = newValue!;
                //                 });
                //               },
                //             ),
                //           ),
                //         ),
                //       ),
                //       //////////////end dropdown////////////

                //       SizedBox(width: 10),
                //       Container(
                //         height: 50,
                //         width: screenw * 0.3,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(10),
                //           border: Border.all(width: 1, color: Colors.grey),
                //         ),
                //         child: Padding(
                //           padding: EdgeInsets.only(left: 10),
                //           child: TextField(
                //             decoration: InputDecoration(
                //                 hintText: dateday, border: InputBorder.none),
                //           ),
                //         ),
                //       ),
                //       SizedBox(width: 10),
                //       Container(
                //         height: 50,
                //         width: screenw * 0.3,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(10),
                //           border: Border.all(width: 1, color: Colors.grey),
                //         ),
                //         child: Padding(
                //           padding: EdgeInsets.only(left: 10),
                //           child: TextField(
                //             decoration: InputDecoration(
                //                 hintText: 'Tel.', border: InputBorder.none),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 50,
                    width: screenw,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Phone'),
                        Text('+8562056555550'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 50,
                    width: screenw,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ID or Passport'),
                        Text('0561567'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 38,
                ),
                Container(
                  width: 336,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffEEEDF0),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Image.asset('icons/Group 27.png'),
                          onTap: () {
                            getimage1();
                          },
                        ),
                        SizedBox(height: 14.75),
                        Text('Take Your ID or Passport Photo')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
