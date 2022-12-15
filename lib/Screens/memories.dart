import 'package:flutter/material.dart';


class MemoriesScreen extends StatelessWidget {
  const MemoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildImageMemories(
                  "assets/studentSweech.png", "Orentation ma timi "),
              _buildImageMemories("assets/swechhatomoon.png",
                  "you won't believe hai asti nasa ko Satellite ma timro name moon ma gako xa maile form bhardeko thya, armentis bhanni Satellite pathako xa asti tei ma gako xa"),
              _buildImage("assets/queen1.png", ),
              _buildImage("assets/queen2.png", ),
              _buildImage("assets/queen3.png", ),
              _buildImage("assets/home.png", ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildImageMemories(String imagePath, String message) {
  return Card(
    child: Container(
        padding: const EdgeInsets.all(10),
        height: 380,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.pink,
              Colors.pinkAccent,
              Colors.pink.shade600,
            ],
          ),
          // color: Colors.amber,
          // image: DecorationImage(
          //   image: AssetImage(ImagePath,),
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              message,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        )),
  );
}


Widget _buildImage(String imagePath)
{
  return Card(
    child: Container(
        padding: const EdgeInsets.all(10),
        height: 380,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.pink,
              Colors.pinkAccent,
              Colors.pink.shade600,
            ],
          ),
          // color: Colors.amber,
          // image: DecorationImage(
          //   image: AssetImage(ImagePath,),
          // ),
        ),
        child: 
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
           
           
          
        )
  );
}

