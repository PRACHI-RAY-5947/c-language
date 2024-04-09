import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:invoice_generator/utils/globals.dart';
import 'package:invoice_generator/views/pages/savechanges.dart';

import '../../utils/routes.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

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
        child: Container(
          decoration: BoxDecoration(
            color: Colors.purple.withOpacity(0.3),
            image: const DecorationImage(
              image: NetworkImage("lib/assets/invoice.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(MyRoutes.invoice_info);
              },
              child: Container(
                margin: const EdgeInsets.all(6.0),
                height: size.height * 0.12,
                width: size.width * 0.99,
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
            ),
            //2nd container
            Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.purple.shade50,
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Select Language"),
                              content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ...languages
                                        .map(
                                          (e) => Text(e['languages']),
                                        )
                                        .toList(),
                                  ]),
                            );
                          });
                    },
                    child: Container(
                      height: size.height * 0.10,
                      width: size.width * 0.99,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.language),
                            Text(
                              "Invoice Language",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              width: 270,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(MyRoutes.Templatepage);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(3),
                      height: size.height * 0.08,
                      width: size.width * 0.99,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.description),
                            Text(
                              "Templates",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              width: 310,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //3rd container
            Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.purple.shade50,
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(MyRoutes.Bussiness_info);
                    },
                    child: Container(
                      height: size.height * 0.10,
                      width: size.width * 0.99,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.contacts_rounded),
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
                            SizedBox(
                              width: 345,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //4th container
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(MyRoutes.Clientpage);
                    },
                    child: Container(
                      height: size.height * 0.065,
                      width: size.width * 0.99,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_circle_right_sharp),
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
                            SizedBox(
                              width: 350,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //4th Container
            Container(
              margin: const EdgeInsets.all(6.0),
              height: size.height * 0.35,
              width: size.width * 0.99,
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
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(MyRoutes.NewItems);
                            },
                            child: Container(
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
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text(
                                          "Discount",
                                          style: TextStyle(
                                            color: Colors.purple.shade100,
                                            fontSize: 18,
                                          ),
                                        ),
                                        content: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("0%"),
                                            Text("percentage"),
                                          ],
                                        ),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pop(); // Close dialog
                                            },
                                            child: Text('Cancel'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pop(); // Close dialog
                                            },
                                            child: Text('Save'),
                                          ),
                                        ],
                                      );
                                    });
                              },
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.discount),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          ("Discount"),
                                        ),
                                        SizedBox(
                                          width: 330,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 25,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text(
                                                  "Shipping",
                                                  style: TextStyle(
                                                    color:
                                                        Colors.purple.shade100,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                content: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("₹ 0.00"),
                                                  ],
                                                ),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop(); // Close dialog
                                                    },
                                                    child: Text('Cancel'),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop(); // Close dialog
                                                    },
                                                    child: Text('Save'),
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                      child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(Icons.home_outlined),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              ("Tax"),
                                            ),
                                            SizedBox(
                                              width: 368,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              size: 25,
                                            ),
                                          ]),
                                    ),
                                  ),
                                ],
                              ),
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
            //5th container
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.purple.shade50,
              ),
              margin: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Currency"),
                                content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ...languages
                                          .map(
                                            (e) => Text(e['currency']),
                                          )
                                          .toList(),
                                    ]),
                              );
                            });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.currency_pound_outlined),
                          SizedBox(width: 10),
                          Text("Currency"),
                          SizedBox(
                            width: 348,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.format_indent_increase_outlined),
                        SizedBox(width: 10),
                        Text("Signature"),
                        SizedBox(
                          width: 345,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.library_books_outlined),
                        SizedBox(width: 10),
                        Text("Terms & Conditions"),
                        SizedBox(
                          width: 280,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: Text(
                                    "Attachments",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.purple.shade100,
                                    ),
                                  ),
                                  content: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () async {
                                          ImagePicker picker = ImagePicker();
                                          XFile? xfile = await picker.pickImage(
                                              source: ImageSource.gallery);
                                          User.image = File(xfile!.path);
                                        },
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.image_outlined),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("Choose from Gallery")
                                          ],
                                        ),
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.camera_alt_outlined),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text("Take photo")
                                        ],
                                      )
                                    ],
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); // Close dialog
                                      },
                                      child: const Text('Cancel'),
                                    ),
                                  ]);
                            });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.attach_email_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Attachments"),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            color: Colors.grey.shade200,
                            width: size.width * 0.9,
                            height: 40,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add_circle_outlined,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Add Attachments"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ] //Border
              ),
        ),
      ),
    );
  }
}
