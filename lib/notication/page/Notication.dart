import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Notication extends StatefulWidget {
  const Notication({super.key});

  @override
  State<Notication> createState() => _NoticationState();
}

class _NoticationState extends State<Notication> {
  bool _isInitialValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 5),
            color: Color(0xffEEEDF0),
            transform:
                _isInitialValue ? Matrix4.identity() : Matrix4.rotationX((45)),
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 50, bottom: 27),
              height: 750,
              width: 382,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 33),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Setting',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('icons/Group 36@3x.png',width: 27,height: 27),
                          Text('Language'),
                          IconButton(
                              onPressed: () {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) =>
                                //               Edit_name()));
                              },
                              icon: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Image.asset('icons/Group 35.png',width: 27,height: 27),
                          Text('Notification'),
                          IconButton(
                              onPressed: () {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) =>
                                //               Edit_name()));
                              },
                              icon: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('icons/Group 43@3x.png',width: 27,height: 27),
                          Text('Private'),
                          IconButton(
                              onPressed: () {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) =>
                                //               Edit_name()));
                              },
                              icon: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Image.asset('icons/Group 39.png',width: 27,height: 27),
                          Text('Rate koophai App'),
                          IconButton(
                              onPressed: () {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) =>
                                //               Edit_name()));
                              },
                              icon: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Image.asset('icons/Group 41.png',width: 27,height: 27),
                          Text('App Info'),
                          IconButton(
                              onPressed: () {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) =>
                                //               Edit_name()));
                              },
                              icon: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                    ],
                  )),
            ),
          )
        ]),
      ),
    );
  }
}
