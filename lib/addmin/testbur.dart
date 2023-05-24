import 'package:flutter/material.dart';
  
  
  class RadialGradientApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter '),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient:  RadialGradient(
                colors: [
                  Color.fromARGB(255, 110, 11, 4),
                  Colors.white,
                  
                
                ],
              )
            ),
           
          )
        )
      );
    }
  }