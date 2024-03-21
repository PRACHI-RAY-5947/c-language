import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/list_file.dart';
import '../../utils/routes.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  get icon => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.width;

    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.blue.shade800,
            ),
            accountName: const Text(
              "Your Name",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: const Text(
              "email@demo.io",
              style: TextStyle(color: Colors.black),
            ),
          ),
          //home
          Container(
            margin: const EdgeInsets.all(5),
            height: h * 0.04,
            width: w * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue.shade200,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.home,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "Home",
                      ),
                      const SizedBox(
                        width: 175,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //Category
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.category_outlined,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Category",
                    ),
                    const SizedBox(
                      width: 175,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //notification
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.category_outlined,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Category",
                    ),
                    const SizedBox(
                      width: 175,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Cart
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.category_outlined,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Category",
                    ),
                    const SizedBox(
                      width: 175,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //Orders
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.category_outlined,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Category",
                    ),
                    const SizedBox(
                      width: 175,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
      appBar: AppBar(
        centerTitle: true,
        actions: [const Icon(Icons.shopping_cart)],
        title: const Text(
          "Shop here",
        ),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.blue.shade900,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              ...Product.map(
                (e) => Row(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(MyRoutes.detailPage);
                    },
                    child: Container(
                      height: h * 0.3,
                      width: w * 0.9,
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.blue.shade200,
                        shape: BoxShape.rectangle,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            e['title'],
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: h * 0.22,
                            width: w * 0.4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                  e['thumbnail'],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ).toList(),
            ]),
          ),
        ),
      ),
    );
  }
}
