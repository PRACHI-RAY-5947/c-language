import 'package:flutter/material.dart';

class invoice_info extends StatefulWidget {
  const invoice_info({super.key});

  @override
  State<invoice_info> createState() => _invoice_infoState();
}

class _invoice_infoState extends State<invoice_info> {
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
