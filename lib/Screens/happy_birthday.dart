import 'dart:math';
import 'package:appsweech/utils/theme.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class HappyBirthday extends StatefulWidget {
  const HappyBirthday({super.key});

  @override
  State<HappyBirthday> createState() => _HappyBirthdayState();
}

class _HappyBirthdayState extends State<HappyBirthday> {
  late ConfettiController _controllerCenter;
  final musicController = AssetsAudioPlayer.newPlayer();
  @override
  void initState() {
    super.initState();
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 100));
    _controllerCenter.play();
    musicController.open(
      Audio("assets/anime_song_happy_birthday.mp3"),
      autoStart: true,
      showNotification: true,
    );
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    musicController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 231, 231),
        body: Stack(
          children: [
            Positioned(
              top: 100,
              left: 100,
              child: Container(
                height: 210,
                // padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 200),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/swechha.jpg",
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                // decoration: BoxDecoration(),
                padding: const EdgeInsets.only(
                    left: 150, right: 60, top: 230, bottom: 250),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/yemmmmmu.jpg",
                    scale: 0.8,
                  ),
                ),
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.topCenter,
                child: ConfettiWidget(
                  confettiController: _controllerCenter,
                  blastDirection: pi / 2,
                  maxBlastForce: 9,
                  minBlastForce: 2,
                  emissionFrequency: 0.03,

                  // colors: const [
                  //   AppThemeColor.darkPink,
                  //   AppThemeColor.black,
                  // ],
                  // 10 paticles will pop-up at a time
                  numberOfParticles: 25,
                  // particles will pop-up
                  gravity: 0.2,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 236, 79, 238)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "go back",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppThemeColor.black),
                  )),
              Flexible(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 236, 79, 238)),
                    onPressed: () {
                      musicController.dispose();
                      musicController.open(
                        Audio("assets/anime_song_happy_birthday.mp3"),
                        autoStart: true,
                        showNotification: true,
                      );
                      _controllerCenter.play();
                    },
                    child: const Text(
                      "Shower more flower to queen",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppThemeColor.black),
                    )),
              ),
            ],
          ),
        ));
  }
}
