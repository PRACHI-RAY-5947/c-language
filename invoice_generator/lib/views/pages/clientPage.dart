import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/globals.dart';

class Clientpage extends StatefulWidget {
  const Clientpage({super.key});

  @override
  State<Clientpage> createState() => _ClientpageState();
}

class _ClientpageState extends State<Clientpage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
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
            child: const Icon(Icons.arrow_back),
          ),
          title: const Text("New Client"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.all(16),
              height: h * 0.7,
              width: w * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Colors.purple.shade50)]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Form(
                            key: formkey,
                            child: TextFormField(
                              onSaved: (val) {
                                User.name = val;
                              },
                              validator: (val) => (val!.isEmpty) ? "QWE" : null,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.drive_file_rename_outline,
                                  color: Colors.purple.shade50,
                                ),
                                hintText: "Name",
                                labelText: "Client Name",
                                labelStyle: TextStyle(
                                  color: Colors.purple.shade100,
                                ),
                                helperStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.purple.shade100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  //name
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Form(
                            key: formkey,
                            child: TextFormField(
                              onSaved: (val) {
                                User.name = val;
                              },
                              validator: (val) => (val!.isEmpty) ? "QWE" : null,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.drive_file_rename_outline,
                                  color: Colors.purple.shade100,
                                ),
                                hintText: "Name",
                                labelText: "Name",
                                labelStyle: TextStyle(
                                  color: Colors.purple.shade100,
                                ),
                                helperStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.purple.shade100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  //E-mail
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {},
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.purple.shade100,
                              ),
                              hintText: "name321@gmail.com",
                              labelText: "E-mail",
                              labelStyle: TextStyle(
                                color: Colors.purple.shade100,
                              ),
                              helperStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.purple.shade100,
                                ),
                              ),
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            keyboardType: TextInputType.emailAddress,
                          ),
                        )
                      ],
                    ),
                  ),
                  //contact number
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {},
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.call,
                                color: Colors.purple.shade100,
                              ),
                              hintText: "9955661530",
                              labelText: "Phone",
                              labelStyle: TextStyle(
                                color: Colors.purple.shade100,
                              ),
                              helperStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.purple.shade100,
                                ),
                              ),
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            maxLength: 10,
                            keyboardType: TextInputType.phone,
                          ),
                        )
                      ],
                    ),
                  ),

                  //Billing Address
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {},
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.add_location_alt_outlined,
                                  color: Colors.purple.shade100),
                              hintText:
                                  "Flat no./hose no., society/building, Area, City",
                              labelText: "Billing Address",
                              labelStyle: TextStyle(
                                color: Colors.purple.shade100,
                              ),
                              helperStyle: TextStyle(
                                color: Colors.purple.shade100,
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.purple.shade100,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Shipping Address
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {},
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.location_city,
                                  color: Colors.purple.shade100),
                              hintText:
                                  "Flat no./hose no., society/building, Area, City",
                              labelText: "Shipping Address",
                              labelStyle: TextStyle(
                                color: Colors.purple.shade100,
                              ),
                              helperStyle: TextStyle(
                                color: Colors.purple.shade100,
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.purple.shade100,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: h * 0.15,
                      width: w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      // client details
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text("Client Details"),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              onSaved: (val) {},
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "Client details",
                                labelText: "Details",
                                labelStyle: TextStyle(
                                  color: Colors.purple.shade100,
                                ),
                                helperStyle: TextStyle(
                                  color: Colors.purple.shade100,
                                  fontSize: 18,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.purple.shade100,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //save button
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          formkey.currentState!.save();
                        }
                      },
                      icon: const Icon(Icons.save_alt_outlined),
                      label: const Text("Save"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        backgroundColor: Colors.purple.shade200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
