import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/feature/views/main_view/home.dart';
import 'package:furniture_shopping_app/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: themeData,
        debugShowCheckedModeBanner: false,
        home: const HomeView());
  }
}
