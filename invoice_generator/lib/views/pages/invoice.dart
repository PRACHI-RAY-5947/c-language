import 'package:flutter/material.dart';

class invoice extends StatefulWidget {
  const invoice({super.key});

  @override
  State<invoice> createState() => _invoiceState();
}

class _invoiceState extends State<invoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Invoice Info"),
        backgroundColor: Colors.purple.shade300,
      ),
      body: Column(
        children: [
          const Text(
            "Invoice Number ⁕",
            style: TextStyle(fontSize: 10),
          ),
          Column(
            children: [
              Container(
                color: Colors.purple.shade50,
              )
            ],
          ),
          Column(
            children: [
              const Text(
                "Creation Date ⁕",
                style: TextStyle(fontSize: 10),
              ),
              Container(
                color: Colors.purple.shade50,
              )
            ],
          ),
        ],
      ),
    );
  }
}
