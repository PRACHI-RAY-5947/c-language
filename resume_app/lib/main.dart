import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app/views/screens/buildPage.dart';
import 'package:resume_app/views/screens/pdfPage.dart';
import 'package:resume_app/views/screens/personalinfo_page.dart';
import 'package:resume_app/views/screens/home_page.dart';
import 'package:resume_app/views/screens/splash_page.dart';
import 'package:resume_app/utils/routes.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.splash_page: (context) => const Splashscreen(),
        MyRoutes.homePage: (context) => const homepage(),
        MyRoutes.buildPage: (context) => const BuildPage(),
        MyRoutes.personalinfoPage: (context) => const personalinfopage(),
        // MyRoutes.pdfPage: (context) => const PdfPage(),
      },
    );
  }
}
