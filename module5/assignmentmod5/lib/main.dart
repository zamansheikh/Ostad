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
          backgroundColor: Colors.green,
          title: const Text('Home'),
          leading: IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'This is mod5  Assignment',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "My",
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    ),
                    Text(
                      "Phone",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                    Text(
                      "Name",
                      style: TextStyle(fontSize: 20, color: Colors.pink),
                    ),
                    Text(
                      "Your Phone Name",
                      style: TextStyle(fontSize: 25, color: Colors.orange),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
