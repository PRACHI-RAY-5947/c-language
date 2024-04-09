import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/buttons_row.dart';
import '../../utils/globals.dart';

class templatespage extends StatefulWidget {
  const templatespage({super.key});

  @override
  State<templatespage> createState() => _templatespageState();
}

class _templatespageState extends State<templatespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: Text("Templates"),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: bg_images.length,
              itemBuilder: (context, index) {
                return Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                        image: DecorationImage(
                          image: NetworkImage(bg_images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ]);
              },
            ),
          )
        ],
      ),
    );
  }
}
