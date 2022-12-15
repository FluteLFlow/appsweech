// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:appsweech/utils/text.dart';
import 'package:appsweech/utils/theme.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _musicController = AssetsAudioPlayer.newPlayer();
  // double topPad = 100;
  double topPad = 800;
  bool visible = false;

  @override
  void initState() {
    super.initState();
    _musicController.open(
      Audio("assets/blackpinkinyourarea.mp3"),
      autoStart: true,
      showNotification: true,
    );

    Future.delayed(const Duration(seconds: 1), () => changeSize());
    Future.delayed(const Duration(seconds: 3), () => visibility());

    Future.delayed(
        const Duration(seconds: 9),
        () => Navigator.pushReplacement(context,
            CupertinoPageRoute(builder: (context) => const HomeScreen())));
  }

  void changeSize() {
    setState(() {
      topPad = 0;
    });
  }

  void visibility() {
    setState(() {
      visible = true;
    });
  }

  @override
  void dispose() {
    _musicController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final globalHeight = MediaQuery.of(context).size.height;
    final globalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/bpback.png",
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: AnimatedContainer(
                padding: EdgeInsets.only(top: topPad),
                duration: const Duration(seconds: 4),
                child: Container(
                  color: AppThemeColor.lightPink,
                ),
              ),
            ),
            Expanded(
              child: AnimatedContainer(
                padding: EdgeInsets.only(bottom: topPad),
                duration: const Duration(seconds: 4),
                child: Container(
                  color: AppThemeColor.black,
                ),
              ),
            )
          ],
        ),
        Positioned(
          top: globalHeight / 6,
          child: Visibility(
            visible: visible,
            child: Container(
              width: globalWidth,
              alignment: Alignment.center,
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/bp.png",
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: globalHeight / 2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.center,
            width: globalWidth,
            child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  totalRepeatCount: 1,
                  pause: const Duration(milliseconds: 400),
                  animatedTexts: [
                    RotateAnimatedText(TextInput.name,
                        textStyle: GoogleFonts.b612(
                            fontStyle: FontStyle.italic,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    RotateAnimatedText(TextInput.awesome,
                        textStyle: GoogleFonts.b612(fontSize: 25),
                        textAlign: TextAlign.center),
                    RotateAnimatedText(TextInput.nickName,
                        textStyle: GoogleFonts.b612(fontSize: 25),
                        textAlign: TextAlign.center),
                    RotateAnimatedText("minne mona in your area",
                        textStyle: GoogleFonts.b612(fontSize: 25),
                        textAlign: TextAlign.center),
                    // RotateAnimatedText('Made with love using flutter', textAlign: TextAlign.center),
                  ],
                )),
          ),
        ),
      ],
    ));
  }
}
