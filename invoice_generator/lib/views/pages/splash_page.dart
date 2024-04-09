import 'dart:async';
import 'package:flutter/material.dart';
import 'package:invoice_generator/main.dart';
import 'package:invoice_generator/utils/routes.dart';

class splash_page extends StatefulWidget {
  const splash_page({super.key});

  @override
  State<splash_page> createState() => _splashpageState();
}

class _splashpageState extends State<splash_page> {
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
      body: Center(
        child: Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple.shade50,
              image: const DecorationImage(
                image: NetworkImage("lib/assets/invoice.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
