import 'package:flutter/material.dart';

import '../../utils/routes.dart';

class StopwatchPage extends StatefulWidget {
  const StopwatchPage({super.key});

  @override
  State<StopwatchPage> createState() => StopwatchPageState();
}

class StopwatchPageState extends State<StopwatchPage> {
  int hour = 0;
  int minute = 0;
  int second = 0;
  DateTime d = DateTime.now();
  bool isTimer = false;

  timer() {
    isTimer = true;
    Future.delayed(const Duration(microseconds: 5), () {
      setState(() {
        if (isTimer) {
          second++;
        }
        if (second > 59) {
          second = 0;
          minute++;
        }
        if (minute > 59) {
          minute = 0;
          hour++;
        }
        if (hour > 12) {
          hour = 0;
        }
      });
      if (isTimer) {
        timer();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).popAndPushNamed(MyRoutes.homePage);
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text("StopWatch Clock"),
        backgroundColor: Colors.green.shade300,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${hour.toString().padLeft(2, '0')} : ${minute.toString().padLeft(2, '0')} :${second.toString().padLeft(2, '0')} ",
              style: TextStyle(
                color: Colors.green.shade300,
                fontSize: 70,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    if (!isTimer) {
                      timer();
                    }
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.not_started_outlined,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    isTimer = false;
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.stop_circle_outlined,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    isTimer = false;
                    hour = minute = second = 0;
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.restart_alt,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
