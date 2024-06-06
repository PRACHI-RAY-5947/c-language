import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class Newitem extends StatefulWidget {
  const Newitem({super.key});

  @override
  State<Newitem> createState() => _NewitemState();
}

class _NewitemState extends State<Newitem> {
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
        title: const Text("New Item"),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: h * 0.855,
            width: w * 0.9,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text("Item Name"),
                      ],
                    ),
                    TextFormField(
                      onSaved: (val) {},
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Enter item name",
                        labelText: "Items",
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text("Item Price"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onSaved: (val) {},
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "₹ 0.00",
                        labelText: "Item Price",
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text("Item Quantity"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onSaved: (val) {},
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Item Quantity",
                        labelText: "1",
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text("Unit of Measure"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onSaved: (val) {},
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "None",
                        labelText: "Unit",
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text("Discount"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onSaved: (val) {},
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "0 %",
                        labelText: "Discount",
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text("Tax Rate"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onSaved: (val) {},
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "0 %",
                        labelText: "Tax",
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text("Attachments"),
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
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: h * 0.05,
                  width: w,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Amount",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "₹ 0.00",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
