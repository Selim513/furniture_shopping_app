import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/feature/views/favourite/favourite.dart';
import 'package:furniture_shopping_app/feature/views/home/home.dart';
import 'package:furniture_shopping_app/feature/views/notification/notificationView.dart';
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
    const FavoritesView(),
    const NotificatonView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedView[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
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
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon((index == 1) ? Icons.bookmark : Icons.bookmark_border),
              label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon((index == 2)
                  ? CupertinoIcons.bell_fill
                  : CupertinoIcons.bell),
              label: 'Notificaton'),
          BottomNavigationBarItem(
              icon: Icon((index == 3) ? Icons.person : Icons.person_2_outlined),
              label: 'Profile'),
        ],
      ),
    );
  }
}
