import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Edit_id extends StatefulWidget {
  const Edit_id({super.key});

  @override
  State<Edit_id> createState() => _Edit_idState();
}

class _Edit_idState extends State<Edit_id> {
  @override
  Widget build(BuildContext context) {
   double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffEEEDF0),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(right: 10, left: 10, top: 100, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           
            children: [
              Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                      margin: EdgeInsets.only(left: 0),
                       child: Text(
                          'ID or Passport',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff555555)),
                        ),
                     ),SizedBox(height: 10),
                      Container(
                        width: screenw * 0.8,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: Color(0xff555555))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: TextFormField(
                                style: TextStyle(fontSize: 18,),
                                decoration: InputDecoration(
                                  label: Text('.....'),
                                  border: InputBorder.none
                                )
                              ),
                            ),
                      ),
                       
                    ],
                  ),
                ],
              ),
                 SizedBox(height: 100),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                width: screenw,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFE2430)),
                child: Center(
                    child: Text(
                  'Save',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}