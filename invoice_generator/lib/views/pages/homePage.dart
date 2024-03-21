import 'dart:io';

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("New Invoice"),
        backgroundColor: Colors.purple.shade300,
        leading: const Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(6.0),
              height: 120,
              width: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.purple.shade50,
              ),
              padding: const EdgeInsets.all(8),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "INV00001",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                            text: ("\n\nCreated on 18/03/2024"
                                "\nDue on 25/03/2024"),
                            style: TextStyle(fontSize: 10))
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 25,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.purple.shade50,
              ),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Invoice Language",
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Templates",
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.purple.shade50,
              ),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "From",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                TextSpan(
                                    text: ("\nAdd Business"),
                                    style: TextStyle(fontSize: 10))
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "Bill To",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                TextSpan(
                                    text: ("\nAdd client"),
                                    style: TextStyle(fontSize: 10))
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              height: 460,
              width: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.purple.shade50,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.shopping_cart_checkout),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Items"),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            color: Colors.grey.shade200,
                            width: size.width * 0.9,
                            height: 40,
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.add_circle_outlined,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Add Items"),
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            padding: const EdgeInsets.all(8.0),
                            color: Colors.grey.shade200,
                            width: size.width * 0.9,
                            margin: const EdgeInsets.only(top: 5),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Subtotal"),
                                Text("₹ 0.00"),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        ("Discount"),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        ("Tax"),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 25,
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(10),
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "₹ 0.00",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        //Border
      ),
    );
  }
}
