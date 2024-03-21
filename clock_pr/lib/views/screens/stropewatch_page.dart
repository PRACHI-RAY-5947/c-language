import 'package:flutter/material.dart';

class StopwatchPage extends StatefulWidget {
  const StopwatchPage({super.key});

  @override
  State<StopwatchPage> createState() => StopwatchPageState();
}

class StopwatchPageState extends State<StopwatchPage> {
  @override
  Widget build(BuildContext context) {
    int hour = 0;
    int minute = 0;
    int secound = 0;
    DateTime d = DateTime.now();

    timer() {
      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          if (secound < 59) {
            secound = 0;
            minute++;
          }
          if (minute < 59) {
            minute = 0;
            hour++;
          }
          if (hour < 12) {
            hour = 0;
          }
        });
        timer();
      });
    }

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text("StopWatch Clock"),
        backgroundColor: Colors.green.shade300,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            " $hour : $minute : $secound ",
            style: const TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.not_started_outlined,
                  size: 70,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.stop_circle_outlined,
                  size: 70,
                ),
              ),
            ],
          ),
          Transform.scale(
            scale: 8,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: Colors.black,
              value: d.hour / 12,
            ),
          ),
          Transform.scale(
            scale: 7,
            child: CircularProgressIndicator(
              strokeWidth: 1,
              color: Colors.black,
              value: d.minute / 60,
            ),
          ),
          Transform.scale(
            scale: 6,
            child: CircularProgressIndicator(
              strokeWidth: 1,
              color: Colors.black,
              value: d.second / 60,
            ),
          ),
        ],
      ),
    );
  }
}
