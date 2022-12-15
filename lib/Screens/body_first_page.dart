// ignore_for_file: deprecated_member_use

import 'package:appsweech/Screens/birthday_wishes.dart';
import 'package:appsweech/Screens/happy_birthday.dart';
import 'package:appsweech/oldapp/old_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstPAge extends StatefulWidget {
  const FirstPAge({super.key});

  @override
  State<FirstPAge> createState() => _FirstPAgeState();
}

class _FirstPAgeState extends State<FirstPAge> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: customDrawer(context),
        appBar: AppBar(
          title: Text(
            "yemmu",
            style: Theme.of(context).textTheme.headline1,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            margin: EdgeInsets.only(
                left: size.height * 0.01,
                right: size.width * 0.02,
                top: size.height * 0.02),
            child: Column(
              children: [
                Card(
                  child: Container(
                    height: size.height * 0.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(230, 8, 6, 6),
                          Colors.black,
                          Colors.black87,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const HappyBirthday()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Surprise",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20),
                            Container(
                                height: 50,
                                margin: const EdgeInsets.only(
                                    bottom: 20, left: 50, right: 50),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    border: Border.all(
                                      width: 1.4,
                                      color: const Color.fromARGB(
                                          255, 238, 58, 118),
                                    )),
                                child: const Text(
                                  "Click Me",
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )),
                  ),
                ),
                Card(
                  child: Container(
                    height: size.height * 0.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.pink,
                          Colors.pinkAccent,
                          Colors.pink.shade600,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const OldApp()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Old app",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20),
                            Container(
                                height: 50,
                                margin: const EdgeInsets.only(
                                    bottom: 20, left: 50, right: 50),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    border: Border.all(
                                      width: 1.5,
                                      color: Colors.black,
                                    )),
                                child: const Text(
                                  "Click Me",
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )),
                  ),
                ),
                Card(
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(230, 8, 6, 6),
                          Colors.black,
                          Colors.black87,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      const BirthdayWishesScreen()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Birthday Wishes",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20),
                            Container(
                                height: 50,
                                margin: const EdgeInsets.only(
                                    bottom: 20, left: 50, right: 50),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    border: Border.all(
                                      width: 1.4,
                                      color: const Color.fromARGB(
                                          255, 238, 58, 118),
                                    )),
                                child: const Text(
                                  "Click Me",
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Widget customDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const UserAccountsDrawerHeader(
          currentAccountPicture:
              CircleAvatar(backgroundImage: AssetImage('assets/yemmmmmu.jpg')),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black87),
            ),
          ),
          accountName: Text("Swechha Shrestha",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          accountEmail: Text(
            "one of the prettiest girl",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          // currentAccountPicture: Image.asset(),
        ),
        ListTile(
          leading: const Icon(
            Icons.facebook,
            size: 40,
            color: Colors.black,
          ),
          title: const Text(
            'swechha\s facebook',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () async {
            if (!await launchUrl(
                Uri.parse("https://www.facebook.com/yemmmmu"))) {
              throw 'Could not launch ';
            }
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.web,
            size: 40,
            color: Colors.black,
          ),
          title: const Text(
            'webstie',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () async {
            await launchUrl(Uri.parse("https://www.swechha.com.np/"));
           
          },
        ),
      ],
    ),
  );
}
