import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/feature/views/home/home.dart';
import 'package:furniture_shopping_app/feature/views/profile/profile.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  int index = 0;
  List<Widget> selectedView = [
    const HomeView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedView[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: index,
        selectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon((index == 0) ? Icons.home : Icons.home_outlined),
              label: 'HomeView'),
          BottomNavigationBarItem(
              icon: Icon((index == 1) ? Icons.person : Icons.person_2_outlined),
              label: 'ProfileView'),
        ],
      ),
    );
  }
}
