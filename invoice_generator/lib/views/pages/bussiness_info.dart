import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/globals.dart';

class Bussiness_info extends StatefulWidget {
  const Bussiness_info({super.key});

  @override
  State<Bussiness_info> createState() => _Bussiness_infoState();
}

class _Bussiness_infoState extends State<Bussiness_info> {
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
        title: Text("Bussiness Info"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.all(16),
            height: h * 0.7,
            width: w * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(color: Colors.purple.shade50)]),
            child: Column(
              children: [
                Stack(alignment: Alignment.bottomRight, children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      // image: DecorationImage(
                      //   image: FileImage(User.image!),
                    ),
                  ),
                ]),
                FloatingActionButton.small(
                  onPressed: () async {
                    ImagePicker picker = ImagePicker();
                    XFile? xfile =
                        await picker.pickImage(source: ImageSource.gallery);
                    User.image = File(xfile!.path);
                  },
                  child: const Icon(CupertinoIcons.camera),
                ),
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
                            labelText: "Contact",
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
                //Address
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
                            labelText: "Address",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
