import 'dart:async';

import 'package:ecom/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _Screen1State();
}

class _Screen1State extends State<ScreenSplash>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Timer(Duration(seconds: 3), () {
      // Navigate to the next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(horizontal: 42),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              Image.asset(
                'asset/logo.jpg',
                height: 500.roundToDouble(),
                width: 500.roundToDouble(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
