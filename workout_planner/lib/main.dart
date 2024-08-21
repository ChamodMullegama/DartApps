import 'package:flutter/material.dart';
import 'package:workout_planner/pages/addNew_page.dart';
import 'package:workout_planner/pages/favourites_page.dart';
import 'package:workout_planner/pages/home_page.dart';
import 'package:workout_planner/pages/profile_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    AddnewPage(),
    favouritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Workout Planner",
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
            
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add"
            
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorites"
            
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "pROFILE"
            
            ),
          ],
        ),
        body: _pages[_currentIndex],
      ),
    );
  }
}
