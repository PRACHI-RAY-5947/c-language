import 'package:flutter/material.dart';
import 'package:invoice_generator/utils/routes.dart';
import 'package:invoice_generator/views/pages/homePage.dart';
import 'package:invoice_generator/views/pages/invoice_info.dart';
import 'package:invoice_generator/views/pages/splash_page.dart';

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
      MyRoutes.splash_page: (context) => const splash_page(),
      MyRoutes.homePage: (context) => const homePage(),
      MyRoutes.invoice_info: (context) => const invoice_info(),
    });
  }
}
