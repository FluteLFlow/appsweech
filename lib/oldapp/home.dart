// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildHomePage() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: const <Widget>[
      SizedBox(
        height: 500,
        width: 400,
        child: Card(
          elevation: 3,
          shadowColor: Colors.black,
          color: Colors.pink,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Center(
              child: Text(
                "Happy Birthday to you Swechha Shrestha \n 생일 축하 합니다 당신 swechya shrestha",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 500,
        width: 400,
        child: Card(
          elevation: 3,
          shadowColor: Colors.black,
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Center(
              child: Text(
                "Happy Birthday to you 	Shuhua Shrestha",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 500,
        width: 400,
        child: Card(
          elevation: 3,
          shadowColor: Colors.black,
          color: Colors.pink,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Center(
              child: Text(
                "Happy Birthday to you 	Minne Mona",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 500,
        width: 400,
        child: Card(
          elevation: 3,
          shadowColor: Colors.black,
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Center(
              child: Text(
                "Happy Birthday to you Yemuna",
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 500,
        width: 400,
        child: Card(
          elevation: 3,
          shadowColor: Colors.black,
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Center(
              child: Text(
                "How you like that?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
