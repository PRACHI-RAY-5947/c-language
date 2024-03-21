import 'dart:async';
import 'package:flutter/material.dart';
import 'package:resume_app/utils/routes.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(
      const Duration(seconds: 3),
      (tick) {
        Navigator.pushReplacementNamed(context, MyRoutes.homePage);
        tick.cancel();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          "Welcome",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ),
      ),
      backgroundColor: Colors.purple.shade200,
    );
  }
}
