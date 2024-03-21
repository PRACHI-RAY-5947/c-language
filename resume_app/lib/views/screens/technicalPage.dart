import 'package:flutter/material.dart';

class technicalPage extends StatefulWidget {
  const technicalPage({super.key});

  @override
  State<technicalPage> createState() => _technicalPageState();
}

class _technicalPageState extends State<technicalPage> {
  List Skill = ["", ""];
  List<TextEditingController> skillController = [
    TextEditingController(),
    TextEditingController(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tech"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...List.generate(
                    Skill.length,
                    (index) => Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: skillController[index],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Skill.removeAt(index);
                            setState(() {});
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Skill.add("");

                      setState(() {});
                    },
                    child: Text('Add'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
