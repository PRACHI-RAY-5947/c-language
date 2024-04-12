import 'package:flutter/material.dart';

class MyRoutes {
  static String splasPage = '/';
  static String homePage = 'homePage';
  static String clockPage = "clock_page";
  static String digitalPage = "digital-watch_page";
  static String stopwatchPage = "stropewatch_page";
  static String digitalClock = "digitalClock";
  static String calenderPage = "CalendarScreen";
}

bool timer = false;
bool image = false;
List bgImages = [
  "lib/utils/Images/img1.jpg",
  "lib/utils/Images/img2.jpg",
  "lib/utils/Images/img3.jpg",
  "lib/utils/Images/img4.jpg",
  "lib/utils/Images/img5.jpg",
  "lib/utils/Images/img6.jpg",
  "lib/utils/Images/img7.jpg",
  "lib/utils/Images/img8.jpg",
  "lib/utils/Images/img9.jpg",
  "lib/utils/Images/img10.jpg",
  "lib/utils/Images/img11.jpg",
  "lib/utils/Images/img12.jpg",
];
int selectedImage = 0;
