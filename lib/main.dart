import 'package:appsweech/Screens/splash_screen.dart';
import 'package:appsweech/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

//adding the data photos in memories from her yt channel
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeColor.pinkTheme(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
