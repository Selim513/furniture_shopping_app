import 'package:flutter/material.dart';

gotoPush(context, Widget screen) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ));
}

gotoPushReplacement(context, Widget screen) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ));
}
