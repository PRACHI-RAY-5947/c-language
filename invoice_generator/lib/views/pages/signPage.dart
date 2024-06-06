import 'package:flutter/material.dart';

class Signaturepage extends StatefulWidget {
  const Signaturepage({super.key});

  @override
  State<Signaturepage> createState() => _SignaturepageState();
}

class _SignaturepageState extends State<Signaturepage> {
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
        title: Text("Signature"),
      ),
    );
  }
}
