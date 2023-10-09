import 'package:flutter/material.dart';

class Setting_app extends StatefulWidget {
  const Setting_app({super.key});

  @override
  State<Setting_app> createState() => _Setting_appState();
}

class _Setting_appState extends State<Setting_app> {
  final bool _isInitialValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedContainer(
                duration: const Duration(milliseconds: 5),
                color: const Color(0xffEEEDF0),
                transform: _isInitialValue
                    ? Matrix4.identity()
                    : Matrix4.rotationX((45)),
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 24, right: 24, top: 50, bottom: 27),
                  height: 750,
                  width: 382,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 24, right: 24, top: 33),
                      child: Column(
                        children: [
                          const Center(
                            child: Text(
                              'Notifications',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                            ),
                          ),
                          const SizedBox(height: 45),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.red),
                                    ),
                                    const SizedBox(width: 05),
                                    const Text(
                                      'Yesterday 16:34',
                                      style:
                                          TextStyle(color: Color(0xffBFC4CE)),
                                    ),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Your Emergency Number: #00122 Successfully',
                                    )
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('rescued'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 32),
                          Container(
                              child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.red),
                                  ),
                                  const SizedBox(width: 05),
                                  const Text('yesterday 16:34',style: TextStyle(color: Color(0xffBFC4CE)),),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Emergency Number: #00121'),
                                  
                                     
                                ],
                              ),
                              const Row(
                                children: [
                                  Text('Recue team is on the way going to your?'),
                                ],
                              )
                            ],
                          )),
                           const SizedBox(height: 32),
                          Container(
                              child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.red),
                                  ),
                                  const SizedBox(width: 05),
                                  const Text('24/05/23  16:36',style: TextStyle(color: Color(0xffBFC4CE)),),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Your Emergency Number: #00121 hasbeen'),
                                  
                                     
                                ],
                              ),
                              const Row(
                                children: [
                                  Text('accepted'),
                                ],
                              )
                            ],
                          ))
                        ],
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
