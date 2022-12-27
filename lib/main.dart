import 'dart:io';

import 'package:flutter/material.dart';
import 'package:null_safety/desktop.dart';
import 'package:null_safety/mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          
          print(constraints.maxWidth.toInt());

          if(MediaQuery.of(context).size.width <= 560)
            {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 0.5
                ),
                  child: MobileScreen());
            }
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 1.3
              ),
              child: DesktopScreen());
        },
      ),
    );
  }
}
