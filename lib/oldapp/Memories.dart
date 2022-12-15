// ignore_for_file: file_names

import 'package:flutter/material.dart';


Widget buildMemories() {
  return ListView(
    children: <Widget>[
      SizedBox(
        height: 400.0,
        child: Card(
          shadowColor: Colors.black,
          child: Image.asset(
            'assets/1.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      const Divider(),
      const Card(
        elevation: 5,
        child: ListTile(
          dense: true,
          leading: Icon(Icons.photo, color: Colors.pink),
          trailing: Icon(
            Icons.cake,
            color: Colors.pink,
          ),
          title: Text("First time when i draw your photo.",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      SizedBox(
        height: 400.0,
        child: Card(
          shadowColor: Colors.black,
          child: Image.asset(
            'assets/2.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      const Card(
        elevation: 5,
        child: ListTile(
          dense: true,
          leading: Icon(Icons.photo, color: Colors.pink),
          trailing: Icon(
            Icons.cake,
            color: Colors.pink,
          ),
          title: Text("The middle girl was you",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      SizedBox(
        height: 400.0,
        child: Card(
          shadowColor: Colors.black,
          child: Image.asset(
            'assets/3.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      const Card(
        elevation: 5,
        child: ListTile(
          dense: true,
          leading: Icon(Icons.photo, color: Colors.pink),
          trailing: Icon(
            Icons.cake,
            color: Colors.pink,
          ),
          title: Text("Thank you for making this art yemuna",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      SizedBox(
        height: 400.0,
        child: Card(
          shadowColor: Colors.black,
          child: Image.asset(
            'assets/4.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      const Card(
        elevation: 5,
        child: ListTile(
          dense: true,
          leading: Icon(Icons.photo, color: Colors.pink),
          trailing: Icon(
            Icons.cake,
            color: Colors.pink,
          ),
          title: Text("you are good paper artist",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      SizedBox(
        height: 400.0,
        child: Card(
          shadowColor: Colors.black,
          child: Image.asset(
            'assets/5.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      SizedBox(
        height: 400.0,
        child: Card(
          shadowColor: Colors.black,
          child: Image.asset(
            'assets/6.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      const Card(
        elevation: 5,
        child: ListTile(
          dense: true,
          leading: Icon(Icons.photo, color: Colors.pink),
          trailing: Icon(
            Icons.cake,
            color: Colors.pink,
          ),
          title: Text(
              "This chocolate was given by you (1st sem ma) on your birthday",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      SizedBox(
        height: 400.0,
        child: Card(
          shadowColor: Colors.black,
          child: Image.asset(
            'assets/7.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      SizedBox(
        height: 400.0,
        child: Card(
          shadowColor: Colors.black,
          child: Image.asset(
            'assets/8.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      SizedBox(
        height: 400.0,
        child: Card(
          shadowColor: Colors.black,
          child: Image.asset(
            'assets/9.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      SizedBox(
        height: 400.0,
        child: Card(
          shadowColor: Colors.black,
          child: Image.asset(
            'assets/10.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
      const Card(
        elevation: 5,
        child: ListTile(
          dense: true,
          leading: Icon(Icons.photo, color: Colors.pink),
          trailing: Icon(
            Icons.cake,
            color: Colors.pink,
          ),
          title: Text("Well you know it",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      SizedBox(
        height: 400.0,
        child: Card(
          shadowColor: Colors.black,
          child: Image.asset(
            'assets/11.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      const Card(
        elevation: 5,
        child: ListTile(
          dense: true,
          leading: Icon(Icons.photo, color: Colors.pink),
          trailing: Icon(
            Icons.cake,
            color: Colors.pink,
          ),
          title:
              Text("Space boy", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    ],
  );
}
