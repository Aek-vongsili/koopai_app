import 'dart:io';
import 'package:app1623/login&signout/checkconfrime_user.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class confrimlogin extends StatefulWidget {
  const confrimlogin({super.key});

  @override
  State<confrimlogin> createState() => _confrimloginState();
}

class _confrimloginState extends State<confrimlogin> {
  XFile? _image;
  late String urlImag;
  var imagepath;
  // List<XFile>? _image1;
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
      appBar: AppBar(
        title: Center(
          child: Text('',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF293275))),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(
            Icons.add,
          ),
          onTap: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => ProfileUser()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                'ກະລູນາຖ່າຍຮູບເພື່ອຢືນຢັນຕົວຕົນ.',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF293275),),
              ),
              _image == null
                  ? Container(
                      margin: EdgeInsets.only(top: 120),
                      height: 280,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.grey)),
                    )
                  : Container(
                      margin: EdgeInsets.only(top: 120),
                      height: 280,
                      width: 300,
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
              GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 80,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Icon(
                      Icons.add_a_photo,
                      size: 50,
                      color: Color(0xFF293275),
                    ),
                  ),
                  onTap: () {
                    getimage1();
                  }),
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
                      'Continuse',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => checkconfrime_user()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
