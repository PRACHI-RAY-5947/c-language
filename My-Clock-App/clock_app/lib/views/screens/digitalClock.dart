import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../utils/routes.dart';

class ClockScreen extends StatefulWidget {
  @override
  _ClockScreenState createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  String _currentTime = '';
  String _currentDate = '';

  @override
  void initState() {
    super.initState();
    // Update time every second
    _updateTime();
    // Update date once
    _updateDate();
  }

  void _updateTime() {
    setState(() {
      _currentTime = DateFormat.Hms().format(DateTime.now());
    });
    // Call this function again after one second
    Future.delayed(Duration(seconds: 1), _updateTime);
  }

  void _updateDate() {
    setState(() {
      _currentDate = DateFormat.yMMMMd().format(DateTime.now());
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        title: const Text(
          'Digital Clock ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        height: h,
        width: w,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
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
        child: Center(
          child: Container(
            height: h * 0.15,
            width: w * 0.4,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            // boxShadow:BoxShadow(
            //   color: Colors.white,
            //   blurRadius: 30,
            //   spreadRadius: 2.0,
            //   offset: Colors.white,
            // )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _currentTime,
                  style: const TextStyle(fontSize: 48.0),
                ),
                const SizedBox(height: 20.0),
                Text(
                  _currentDate,
                  style: const TextStyle(fontSize: 24.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
