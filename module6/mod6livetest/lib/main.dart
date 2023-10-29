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
          title: const Text('My Shopping List'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ]),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.apple),
            title: Text('Apples'),
          ),
          ListTile(
            leading: Icon(Icons.food_bank),
            title: Text('Bananas'),
          ),
          ListTile(
            leading: Icon(Icons.food_bank),
            title: Text('Bread'),
          ),
          ListTile(
            leading: Icon(Icons.food_bank),
            title: Text('Milk'),
          ),
          ListTile(
            leading: Icon(Icons.egg),
            title: Text('Eggs'),
          ),
        ],
      ),
    );
  }
}
