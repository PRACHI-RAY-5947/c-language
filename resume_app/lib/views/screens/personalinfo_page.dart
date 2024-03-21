import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import '../globals/globals.dart';

class personalinfopage extends StatefulWidget {
  const personalinfopage({super.key});

  @override
  State<personalinfopage> createState() => _personalinfopageState();
}

class _personalinfopageState extends State<personalinfopage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Info"),
        backgroundColor: Colors.purple.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    image: DecorationImage(
                      image: FileImage(User.image!),
                    ),
                  ),
                ),
                FloatingActionButton.small(
                  onPressed: () async {
                    ImagePicker picker = ImagePicker();
                    XFile? xfile =
                        await picker.pickImage(source: ImageSource.gallery);
                    User.image = File(xfile!.path);
                  },
                  child: const Icon(CupertinoIcons.camera),
                ),
              ],
            ),

            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey.shade50,
                borderRadius: const BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
              child: Row(
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.all(30),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                        label: const Text("Change"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          backgroundColor: Colors.purple.shade200,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
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
                          prefixIcon: const Icon(
                            Icons.drive_file_rename_outline,
                            color: Colors.purple,
                          ),
                          hintText: "Name",
                          labelText: "Name",
                          labelStyle: const TextStyle(
                            color: Colors.purple,
                          ),
                          helperStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.purple,
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
                        prefixIcon: const Icon(
                          Icons.call,
                          color: Colors.purple,
                        ),
                        hintText: "9955661530",
                        labelText: "Contact",
                        labelStyle: const TextStyle(
                          color: Colors.purple,
                        ),
                        helperStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple,
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
                        prefixIcon: const Icon(
                          Icons.mail,
                          color: Colors.purple,
                        ),
                        hintText: "name321@gmail.com",
                        labelText: "E-mail",
                        labelStyle: const TextStyle(
                          color: Colors.purple,
                        ),
                        helperStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple,
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
                        prefixIcon: const Icon(Icons.add_location_alt_outlined,
                            color: Colors.purple),
                        hintText:
                            "Flat no./hose no., society/building, Area, City",
                        labelText: "Address",
                        labelStyle: const TextStyle(
                          color: Colors.purple,
                        ),
                        helperStyle: const TextStyle(
                          color: Colors.purple,
                          fontSize: 18,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple,
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
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () =>
      //       Navigator.pushNamed(context, MyRoutes.personalinfopage),
      //   label: const Text("Create"),
      //   icon: Icon(Icons.add),
      // )
    );
  }
}
