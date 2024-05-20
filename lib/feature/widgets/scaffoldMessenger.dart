import 'package:flutter/material.dart';

ShowSuccessMessage(message, context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.green,
    behavior: SnackBarBehavior.floating,
    padding: const EdgeInsets.all(10),
    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: Text(
      message,
      textAlign: TextAlign.end,
    ),
  ));
}

showErrorMessage(message, context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red,
    behavior: SnackBarBehavior.floating,
    padding: const EdgeInsets.all(10),
    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: Text(
      message,
      textAlign: TextAlign.center,
    ),
  ));
}
