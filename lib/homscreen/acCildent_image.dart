import 'dart:io';
import 'package:app1623/homscreen/Listammulanc.dart';
import 'package:app1623/homscreen/homepage.dart';
import 'package:app1623/testapp/allstall.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class accident_image extends StatefulWidget {
  const accident_image({super.key});

  @override
  State<accident_image> createState() => _accident_imageState();
}

class _accident_imageState extends State<accident_image> {
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

  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Center(
          child: Text('ຮູບອຸປະຕິເຫດ',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF555555))),
        ),
        elevation: 0,
        backgroundColor: Color(0xFFEEEDF0),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Color(0xff373737),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Hompage()));
          },
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Color(0xFFEEEDF0),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              _image == null
                  ? Container(
                      margin: EdgeInsets.only(
                        top: 50,
                      ),
                      height: 280,
                      width: screenw * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 2,
                            color: Color(0xFF555555),
                          ),
                          color: Colors.white),
                    )
                  : Container(
                      margin: EdgeInsets.only(top: 50),
                      height: 280,
                      width: screenw * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: ClipRRect(
                        child: Image.file(
                          File(_image!.path),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 60,
                width: screenw * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Color(0xFF555555)),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text('ລາຍລະອຽດເພີ່ມເຕີມ..',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBFC4CE))),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                  child: Icon(
                    Icons.add_a_photo,
                    size: 70,
                    color: Color(0xFFFE2430),
                  ),
                  onTap: () {
                    getimage1();
                  }),
              SizedBox(height: screenw * 0.2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 40,
                      width: screenw * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1, color: Color(0xff293275)),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          'ຍົກເລີກ',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff293275),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Hompage();
                    },
                  ),
                  SizedBox(width: 30),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 40,
                      width: screenw * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFE2430)),
                      child: Center(
                        child: Text(
                          'ຕໍ່ໄປ',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    onTap: () {
                    
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: Colors.white,
                              // title: Center(
                              //     child: Text(
                              //   "ແຈ້ງເຕືອນ.,",
                              //   style: TextStyle(
                              //     fontSize: 16,
                              //     color: Color(0xff293275),
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // )),
                              content: Container(
                                height: 150,
                                width: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    Text(
                                      "ການແຈ້ງເຫດ ສຳເລັດແລ້ວ...!",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff293275),
                                      ),
                                    ),
                                    Center(
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(150),
                                          child: Image.asset(
                                            'icons/verify.gif',
                                            width: 120,
                                            height: 120,
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: Text(
                                    "ຕົກລົງ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff293275),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Hompage()));
                                  },
                                ),
                              ],
                            );
                          },
                        );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

