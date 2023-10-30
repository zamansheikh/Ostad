import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //make product and price map
  final Map<String, int> productList = {
    'Product 1': 100,
    'Product 2': 200,
    'Product 3': 300,
    'Product 4': 400,
    'Product 5': 500,
    'Product 6': 600,
    'Product 7': 700,
    'Product 8': 800,
    'Product 9': 900,
    'Product 10': 1000,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text('Product List'),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            final String productName = productList.keys.elementAt(index);
            return Product(
              productName: productName,
              productPrice: '\$${productList[productName]}',
              onTap: () {},
            );
          },
        ));
  }
}

class Product extends StatelessWidget {
  final String productName;
  final String productPrice;
  final void Function()? onTap;
  const Product({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListTile(
        title: Text(productName),
        subtitle: Text(productPrice),
        onTap: onTap,
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Total Item: 1"),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
