import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_app/category.dart';
import 'package:market_app/home.dart';
import 'package:market_app/profile.dart';
import 'package:market_app/search.dart';
import 'package:market_app/wishlist.dart';

class mainlayout extends StatefulWidget {
  const mainlayout({super.key});

  @override
  State<mainlayout> createState() => _mainlayoutState();
}

class _mainlayoutState extends State<mainlayout> {
  @override
  List<Widget> Screens = [
    Home_Screen(),
    Category_Screen(),
    Search_Screen(),
    Wishlist_Screen(),
    Profile_Screen()
  ];
  int currentindex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purpleAccent,
        currentIndex: currentindex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            currentindex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: "Favourites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile"),
        ],
      ),
      body: Screens[currentindex],
    );
  }
}
