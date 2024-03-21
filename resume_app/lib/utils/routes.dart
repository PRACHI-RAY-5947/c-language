import 'package:flutter/material.dart';
import 'package:resume_app/views/screens/home_page.dart';
import 'package:resume_app/views/screens/personalinfo_page.dart';
import 'package:resume_app/views/screens/pdfPage.dart';
import 'package:resume_app/views/screens/buildPage.dart';

class MyRoutes {
  static String splash_page = '/';
  static String homePage = 'homePage';
  static String personalinfoPage = 'personalinfoPage';
  static String buildPage = 'buildPage';
  static String pdfPage = 'pdfPage';

  // static Map<String, WidgetBuilder> routes = {
  //   homePage: (context) => const homePage(),
  //   personalinfopage: (context) => const personalinfopage(),
  //   pdfPage: (context) => const PdfPage(),
  // };

  static List<Map<String, dynamic>> buildoptionPage = [
    {
      'title': "Contact info",
      'icon': "lib/assets/badge.png",
      'route': "contact_info",
    },
    {
      'title': "Experience",
      'icon': "lib/assets/best-customer-experience.png",
      'route': "contact_info",
    },
    {
      'title': "Degree",
      'icon': "lib/assets/book.png",
      'route': "contact_info",
    },
    {
      'title': "Hobby",
      'icon': "lib/assets/juggle.png",
      'route': "contact_info",
    },
    {
      'title': "Creativity",
      'icon': "lib/assets/skill.png",
      'route': "contact_info",
    },
    {
      'title': "Projects",
      'icon': "lib/assets/tasks.png",
      'route': "contact_info",
    },
    {
      'title': "Achievements",
      'icon': "lib/assets/trophy.png",
      'route': "contact_info",
    },
  ];
}
