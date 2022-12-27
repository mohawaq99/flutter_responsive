import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveIndicactor extends StatelessWidget {

  String os;
  AdaptiveIndicactor({
    required this.os
});
  @override
  Widget build(BuildContext context) {

    if(this.os == 'android')
      {
        return CircularProgressIndicator();
      }
    return CupertinoActivityIndicator();
  }
}
