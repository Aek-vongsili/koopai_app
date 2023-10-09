import 'package:flutter/material.dart';

class Notication extends StatefulWidget {
  const Notication({super.key});

  @override
  State<Notication> createState() => _NoticationState();
}

class _NoticationState extends State<Notication> {
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
            transform:
                _isInitialValue ? Matrix4.identity() : Matrix4.rotationX((45)),
            child: Container(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 50, bottom: 27),
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
                      const Center(
                        child: Text(
                          'Setting',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('icons/Group 36@3x.png',width: 27,height: 27),
                          const Text('Language'),
                          IconButton(
                              onPressed: () {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) =>
                                //               Edit_name()));
                              },
                              icon: const Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Image.asset('icons/Group 35.png',width: 27,height: 27),
                          const Text('Notification'),
                          IconButton(
                              onPressed: () {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) =>
                                //               Edit_name()));
                              },
                              icon: const Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('icons/Group 43@3x.png',width: 27,height: 27),
                          const Text('Private'),
                          IconButton(
                              onPressed: () {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) =>
                                //               Edit_name()));
                              },
                              icon: const Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Image.asset('icons/Group 39.png',width: 27,height: 27),
                          const Text('Rate koophai App'),
                          IconButton(
                              onPressed: () {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) =>
                                //               Edit_name()));
                              },
                              icon: const Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Image.asset('icons/Group 41.png',width: 27,height: 27),
                          const Text('App Info'),
                          IconButton(
                              onPressed: () {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) =>
                                //               Edit_name()));
                              },
                              icon: const Icon(Icons.arrow_forward_ios))
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
