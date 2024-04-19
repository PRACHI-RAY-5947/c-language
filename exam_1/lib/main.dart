import 'package:exam_1/screens/detailpage.dart';
import 'package:exam_1/screens/homepage.dart';
import 'package:exam_1/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      MyRoutes.homepage: (context) => HomePage(),
      MyRoutes.detailpage: (context) => const Detailpage(),
    });
  }
}
