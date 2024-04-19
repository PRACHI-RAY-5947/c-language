import 'package:exam_1/utils/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Center(
          child: Text(
            'Home Page',
          ),
        ),
        backgroundColor: Colors.orange.shade200,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.orange.shade200,
                    child: const Icon(Icons.person),
                  ),
                  title: const Text("student['name']"),
                  subtitle: const Text("gr_id['1001']\n"
                      "standard['12']"),
                  trailing: Icon(Icons.edit),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.detailpage);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
