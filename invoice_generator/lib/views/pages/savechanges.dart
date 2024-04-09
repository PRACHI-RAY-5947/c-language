import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Save Changes?'),
                  content: Text('Do you want to save changes?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Close dialog
                      },
                      child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        saveChanges(); // Call saveChanges function
                        Navigator.of(context).pop(); // Close dialog
                      },
                      child: Text('Save'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Open Dialog'),
        ),
      ),
    );
  }

  void saveChanges() {
    // Simulate saving changes (Replace this with your actual save logic)
    print('Changes saved successfully!');
  }
}
