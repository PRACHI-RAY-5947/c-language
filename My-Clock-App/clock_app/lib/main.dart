import 'package:clock_app/utils/routes.dart';
import 'package:clock_app/views/screens/clock_page.dart';
import 'package:clock_app/views/screens/digitalwatch_page.dart';
import 'package:clock_app/views/screens/home_page.dart';
import 'package:clock_app/views/screens/stropewatch_page.dart';
import 'package:flutter/material.dart';

//App initialization
void main() {
  //App execution
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
      theme: ThemeData(
        // useMaterial3: false,
        colorSchemeSeed: Colors.red,
      ),
      routes: {
        MyRoutes.homePage: (context) => const HomePage(),
        MyRoutes.clockPage: (context) => const ClockPage(),
        MyRoutes.digitalPage: (context) => const DigitalWatch(),
        MyRoutes.stopwatchPage: (context) => const StopwatchPage(),
      },
    );
  }
}
