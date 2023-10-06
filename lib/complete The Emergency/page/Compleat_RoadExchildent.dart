import 'dart:io';
import 'package:app1623/SlectEmergency/page/selecEmergency.dart';
import 'package:app1623/submitted/page/submitted.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Road_accident extends StatefulWidget {
  const Road_accident({super.key});

  @override
  State<Road_accident> createState() => Road_accidentState();
}

class Road_accidentState extends State<Road_accident> {
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

  bool _isInitialValue = true;

  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFEEEDF0),
      body: SingleChildScrollView(
        // padding: EdgeInsets.only(left: 20,right: 20,top: 40,bottom: 40),
        child: Center(
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 5),
                color: Color(0xffEEEDF0),
                transform: _isInitialValue
                    ? Matrix4.identity()
                    : Matrix4.rotationX((45)),
                child: Container(
                    margin: EdgeInsets.only(
                        left: 24, right: 24, top: 50, bottom: 27),
                    height: 864,
                    width: 382,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Positioned(
                            right: 220,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 300, top: 20),
                              child: Stack(
                                children: [
                                  Container(
                                    child: Image.asset('icons/Group 13.png'),
                                  )
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectEmergency()));
                          },
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Complete the',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 44,
                                          color: Color(0xFF555555))),
                                  Text('Emergency',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 44,
                                          color: Color.fromARGB(
                                              255, 233, 14, 14))),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                          height: 149,
                          width: screenw * 0.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 2, color: Color(0xFFEEEDF0)),
                               color: Color(0xFFEEEDF0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(child: Container(
                                  
                            width: 80,
                            height: 80,
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
                                  child: Image.asset('icons/radio.png'),
                                  
                            ),
                          ),),
                          Text('Press here to record voice',style: TextStyle(color: Colors.grey),)
                                ],
                              ),
                         
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: screenw * 0.8,
                              height: 50,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Text('Victims')),

///////////////////////////////////////////////vollum////////////////////////////////

                                  Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.red,
                                        ),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            )),
                                      ),
                                      SizedBox(width: 20),
                                      Text('0'),
                                      SizedBox(width: 20),
                                      Container(
                                        margin: EdgeInsets.only(right: 20),
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.red,
                                        ),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: screenw * 0.8,
                              height: 50,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Text('Unconscious Victims  ')),
                                  Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.red,
                                        ),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            )),
                                      ),
                                      SizedBox(width: 20),
                                      Text('0'),
                                      SizedBox(width: 20),
                                      Container(
                                        margin: EdgeInsets.only(right: 20),
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.red,
                                        ),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),

/////////////////////////////////volum/////////////////////////

                        _image == null
                            ? Container(
                                margin: EdgeInsets.only(
                                  right: 20,
                                  left: 20,
                                  top: 50,
                                ),
                                height: 200,
                                width: screenw * 0.9,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 2,
                                      color: Color(0xFFEEEDF0),
                                    ),
                                    color: Color(0xFFEEEDF0)),
                                child: GestureDetector(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_a_photo,
                                          size: 70,
                                          color: Color(0xFFFE2430),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                            'Lorkmdfdfgdf;;'
                                            'dfkjddfgjkdfmmfgdf',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFFBFC4CE)))
                                      ],
                                    ),
                                    onTap: () {
                                      getimage1();
                                    }),
                              )
                            : Container(
                                margin: EdgeInsets.only(
                                    top: 50, right: 20, left: 20),
                                height: 280,
                                width: screenw * 0.9,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 1, color: Color(0xFFEEEDF0))),
                                child: ClipRRect(
                                  child: Image.file(
                                    File(_image!.path),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                        SizedBox(height: 87),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                margin: EdgeInsets.only(right: 24, left: 24),
                                height: 48,
                                width: screenw * 0.7,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffFE2430)),
                                child: Center(
                                  child: Text(
                                    'Confirm',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              onTap: () {
                                //
                                (Route) => true;
                                showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (BuildContext context) {
                                      Future.delayed(Duration(seconds: 6), () {
                                        Navigator.of(context).pop(true);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    submited()));
                                      });
                                      return AlertDialog(
                                        backgroundColor: Colors.white10,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        content: Container(
                                            alignment: Alignment.center,
                                            width: 348,
                                            height: 846,
                                            child: Center(
                                              child: LoadingAnimationWidget
                                                  .hexagonDots(
                                                color: Colors.white,
                                                size: 50,
                                              ),
                                            )),
                                      );
                                    });
                              },
                            ),
                          ],
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
