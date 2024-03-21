import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app/utils/routes.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Homepage")),
        backgroundColor: Colors.purple.shade300,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.buildPage);
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple.shade200,
                        ),
                        child: const Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.personalinfoPage);
                      },

                      // Expanded(
                      //   child: Container(
                      //     // height: 400,
                      //     // width: 600,
                      //     child: const Text(
                      //       "About Me💁‍♀️",
                      //
                      //       style: TextStyle(color: Colors.purple.shade200, fontSize: 25),
                      //     ),
                      //   ),
                      // ),

                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple.shade200),
                      ),
                    ),
                    Column(children: [
                      //
                      // child:
                      Container(
                        margin: const EdgeInsets.all(2),
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple.shade200),
                      ),
                    ]),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.personalinfoPage);
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, MyRoutes.personalinfoPage);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.purple.shade200),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.personalinfoPage);
                      },
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple.shade200),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
