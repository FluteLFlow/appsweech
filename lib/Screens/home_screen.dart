import 'package:appsweech/Screens/body_first_page.dart';
import 'package:appsweech/Screens/memories.dart';
import 'package:appsweech/Screens/yt_player.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> pages = [FirstPAge(), YHomePAge(),MemoriesScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: const Color.fromARGB(255, 224, 71, 122),
          onTap: ((value) {
            setState(() {
              selectedIndex = value;
            });
          }),
          items: const <Widget>[
            Icon(
              Icons.home,
              size: 30,
            ),
            Icon(
              Icons.video_file,
              size: 30,
            ),
            Icon(
              Icons.memory,
              size: 30,
            ),
          ]),
    );
  }
}
