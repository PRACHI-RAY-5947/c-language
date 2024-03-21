import 'package:flutter/material.dart';

import '../../utils/routes.dart';

class DigitalWatch extends StatefulWidget {
  const DigitalWatch({super.key});

  @override
  State<DigitalWatch> createState() => _DigitalWatchState();
}

class _DigitalWatchState extends State<DigitalWatch> {
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
    // int hour = 0;
    // int minute = 0;
    // int second = 0;
    //
    // timer() {
    //   Future.delayed(
    //     const Duration(seconds: 1),
    //     () {
    //       setState(() {
    //         if (second < 59) {
    //           second = 0;
    //           minute++;
    //         }
    //         if (minute < 59) {
    //           minute = 0;
    //           hour++;
    //         }
    //         if (hour < 12) {
    //           hour = 0;
    //         }
    //       });
    //       timer();
    //     },
    //   );
    // }

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).popAndPushNamed(MyRoutes.homePage);
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text("Digital Clock"),
        backgroundColor: Colors.green.shade300,
      ),
      body: Center(
        child: Container(
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
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.scale(
                scale: 8,
                child: CircularProgressIndicator(
                  strokeWidth: 1,
                  color: Colors.green.shade300,
                  value: d.hour / 12,
                ),
              ),
              Transform.scale(
                scale: 6,
                child: CircularProgressIndicator(
                  strokeWidth: 1,
                  color: Colors.black,
                  value: d.minute / 60,
                ),
              ),
              Transform.scale(
                scale: 5,
                child: CircularProgressIndicator(
                  strokeWidth: 1,
                  color: Colors.green.shade300,
                  value: d.second / 60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
