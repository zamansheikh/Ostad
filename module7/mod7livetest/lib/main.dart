import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text('Profile'),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_circle, size: 100, color: Colors.green),
                Text(
                  'Jhone Doe',
                  style: TextStyle(fontSize: 25, color: Colors.green),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Flutter Batch 4',
                  style: TextStyle(fontSize: 22, color: Colors.blue),
                ),
              ],
            ),
          ),
        ));
  }
}
