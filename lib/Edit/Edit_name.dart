import 'package:flutter/material.dart';

class Edit_name extends StatefulWidget {
  const Edit_name({super.key});
  @override
  State<Edit_name> createState() => _Edit_nameState();
}
class _Edit_nameState extends State<Edit_name> {
  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffEEEDF0),
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
                      margin: const EdgeInsets.only(left: 0),
                       child: const Text(
                          'Edit_Name',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff555555)),
                        ),
                     ),
                      const SizedBox(height: 10),
                      Container(
                        width: screenw * 0.8,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: const Color(0xff555555))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: TextFormField(
                                style: const TextStyle(fontSize: 18,),
                                decoration: const InputDecoration(
                                  label: Text('Name'),
                                  border: InputBorder.none
                                )
                              ),
                            ),
                      ),
                      
                       Container(
                      margin: const EdgeInsets.only(left: 0,top: 20),
                       child: const Text(
                          'Edit_Surname',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff555555)),
                        ),
                     ),
                      const SizedBox(height: 10),
                      Container(
                        width: screenw * 0.8,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: const Color(0xff555555))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: TextFormField(
                                style: const TextStyle(fontSize: 18,),
                                decoration: const InputDecoration(
                                  label: Text('Surname'),
                                  border: InputBorder.none
                                )
                              ),
                            ),
                      ),
                    ],
                  ),
                ],
              ),
                 const SizedBox(height: 100),
              Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                width: screenw,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFE2430)),
                child: const Center(
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
