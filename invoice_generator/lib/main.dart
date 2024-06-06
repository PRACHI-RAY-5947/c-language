import 'package:flutter/material.dart';
import 'package:invoice_generator/utils/routes.dart';
import 'package:invoice_generator/views/pages/bussiness_info.dart';
import 'package:invoice_generator/views/pages/clientPage.dart';
import 'package:invoice_generator/views/pages/homePage.dart';
import 'package:invoice_generator/views/pages/invoice.dart';
import 'package:invoice_generator/views/pages/itemsPage.dart';
import 'package:invoice_generator/views/pages/languagePage.dart';
import 'package:invoice_generator/views/pages/newItems.dart';
import 'package:invoice_generator/views/pages/splash_page.dart';
import 'package:invoice_generator/views/pages/invoice_info.dart';
import 'package:invoice_generator/views/pages/templatepage.dart';

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
      MyRoutes.invoice: (context) => const invoice(),
      MyRoutes.invoice_info: (context) => const invoiceinfo(),
      MyRoutes.Templatepage: (context) => const templatespage(),
      MyRoutes.Bussiness_info: (context) => const Bussiness_info(),
      MyRoutes.Clientpage: (context) => const Clientpage(),
      MyRoutes.Languagepage: (context) => Languagepage(),
      MyRoutes.NewItems: (context) => const Newitem(),
      // MyRoutes.Itemspage: (context) => const Itemspage(),
    });
  }
}
