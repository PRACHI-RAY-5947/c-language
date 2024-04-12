import 'package:flutter/material.dart';

import '../../utils/routes.dart';

class CalendarScreen extends StatelessWidget {
  final List<String> _months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  final List<int> _daysInMonth = [
    31,
    28,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
  ];

  final List<String> _daysOfWeek = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.width;
    return Scaffold(
      appBar: AppBar(
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
        title: Text(
          '2024 Calender',
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
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                for (var i = 0; i < 12; i++)
                  _buildMonthCalendar(_months[i], _daysInMonth[i]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMonthCalendar(String month, int daysInMonth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            month,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: daysInMonth + _daysOfWeek.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
          ),
          itemBuilder: (BuildContext context, int index) {
            if (index < _daysOfWeek.length) {
              // Display days of the week
              return Container(
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: Center(
                  child: Text(_daysOfWeek[index]),
                ),
              );
            } else {
              // Display days of the month
              final dayOfMonth = index - _daysOfWeek.length + 1;
              return Container(
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: Text(dayOfMonth.toString()),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
