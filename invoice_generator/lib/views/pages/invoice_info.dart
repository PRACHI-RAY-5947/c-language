import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/globals.dart';

class invoiceinfo extends StatefulWidget {
  const invoiceinfo({super.key});

  @override
  State<invoiceinfo> createState() => _invoiceinfoState();
}

class _invoiceinfoState extends State<invoiceinfo> {
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
        title: const Text("Invoice Info"),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Form(
                          key: formkey,
                          child: TextFormField(
                            onSaved: (val) {
                              User.number = val;
                            },
                            validator: (val) =>
                                (val!.isEmpty) ? "invalid" : null,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.drive_file_rename_outline,
                                color: Colors.purple.shade200,
                              ),
                              hintText: "INV00001",
                              labelText: "Invoice Number",
                              labelStyle: TextStyle(
                                color: Colors.purple.shade200,
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
                                  color: Colors.purple.shade200,
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
                              Icons.calendar_today_outlined,
                              color: Colors.purple.shade200,
                            ),
                            hintText: "05/04/2024",
                            labelText: "Creation date",
                            labelStyle: TextStyle(
                              color: Colors.purple.shade200,
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
                                color: Colors.purple.shade200,
                              ),
                            ),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.singleLineFormatter,
                          ],
                          keyboardType: TextInputType.datetime,
                        ),
                      ),
                    ],
                  ),
                ),
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
                              Icons.update,
                              color: Colors.purple.shade200,
                            ),
                            hintText: "7 days",
                            labelText: "Due Terms",
                            labelStyle: TextStyle(
                              color: Colors.purple.shade200,
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
                                color: Colors.purple.shade200,
                              ),
                            ),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.singleLineFormatter,
                          ],
                          keyboardType: TextInputType.datetime,
                        ),
                      )
                    ],
                  ),
                ),
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
                              Icons.calendar_today_outlined,
                              color: Colors.purple.shade200,
                            ),
                            hintText: "05/04/2024",
                            labelText: "Due date",
                            labelStyle: TextStyle(
                              color: Colors.purple.shade200,
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
                                color: Colors.purple.shade200,
                              ),
                            ),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.singleLineFormatter,
                          ],
                          keyboardType: TextInputType.datetime,
                        ),
                      ),
                    ],
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
        ),
      ),
    );
  }
}
