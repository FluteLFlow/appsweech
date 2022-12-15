import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'home_view.dart';

class OldApp extends StatefulWidget {
  const OldApp({Key? key}) : super(key: key);

  @override
  _OldAppState createState() => _OldAppState();
}

class _OldAppState extends State<OldApp> {
  int _currentIndex = 0;
  void _currentTab(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: const Icon(
            Icons.cake,
            color: Colors.black,
          ),
          actions: const [
            // ignore: prefer_const_constructors
            Padding(
              padding: EdgeInsets.only(
                right: 15,
              ),
              child: Icon(
                Icons.cake,
                color: Colors.black,
              ),
            )
          ],

          title: const Text(
            "Swechha/Yemuna",
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
          // backgroundColor: Colors.black12,
        ),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10.0,
          selectedFontSize: 18.0,
          currentIndex: _currentIndex,
          onTap: (index) => _currentTab(index),
          selectedItemColor: Colors.white,
          backgroundColor: Colors.pink,
          items: const <BottomNavigationBarItem>[
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home", tooltip: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo),
                label: "Memories",
                tooltip: 'Memories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.more), label: "More", tooltip: 'More'),
          ],
        ),
        floatingActionButton: const Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 150, 10),
          child: FloatingActionButton(
            backgroundColor: Colors.pink,
            tooltip: 'hello',
            onPressed: null,
            child: Icon(
              Icons.cake,
              color: Colors.black,
              semanticLabel: "he",
            ),
          ),
        ),
      ),
    );
  }
}
