import 'dart:math';

import 'package:clock_app/utils/routes.dart';
import 'package:flutter/material.dart';

class ClockPage extends StatefulWidget {
  const ClockPage({super.key});

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  DateTime d = DateTime.now();

  void startClock() {
    Future.delayed(const Duration(seconds: 1), () {
      d = DateTime.now();
      setState(() {});
      startClock();
    });
  }

  @override
  void initState() {
    super.initState();
    startClock();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Analogue Clock",
          style: TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).popAndPushNamed(MyRoutes.homePage);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: image
              ? DecorationImage(
                  image: NetworkImage(
                    bgImages[selectedImage],
                  ),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: Container(
          height: h,
          width: w,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              //allDials
              ...List.generate(
                60,
                (index) => Transform.rotate(
                  angle: index * (pi * 2) / 60,
                  child: Divider(
                    endIndent:
                        index % 5 == 0 ? size.width * 0.88 : size.width * 0.9,
                    thickness: 2,
                    color: index % 5 == 0 ? Colors.green.shade900 : Colors.grey,
                  ),
                ),
              ),
              //hourHand
              Transform.rotate(
                angle: pi / 2,
                child: Transform.rotate(
                  angle: d.hour * (pi * 2) / 12,
                  child: Divider(
                    indent: 50,
                    endIndent: size.width * 0.5 - 16,
                    color: Colors.black,
                    thickness: 4,
                  ),
                ),
              ),
              //minuteHand
              Transform.rotate(
                angle: pi / 2,
                child: Transform.rotate(
                  angle: d.minute * (pi * 2) / 60,
                  child: Divider(
                    indent: 30,
                    endIndent: size.width * 0.5 - 16,
                    color: Colors.black,
                    thickness: 2,
                  ),
                ),
              ),
              //secondHand
              Transform.rotate(
                angle: pi / 2,
                child: Transform.rotate(
                  angle: d.second * (pi * 2) / 60,
                  child: Divider(
                    indent: 20,
                    endIndent: size.width * 0.5 - 16,
                    color: Colors.green.shade900,
                    thickness: 2,
                  ),
                ),
              ),
              //dot
              const CircleAvatar(
                radius: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
