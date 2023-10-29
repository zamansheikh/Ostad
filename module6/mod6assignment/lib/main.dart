import 'package:flutter/material.dart';

void main() {
  runApp(const PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  const PhotoGalleryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Photo Gallery"),
        ),
        body: const PhotoGalleryScreen(),
      ),
    );
  }
}

class PhotoGalleryScreen extends StatelessWidget {
  const PhotoGalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Welcome to the Photo Gallery App!",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Search Photos",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        // Grid of images
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Image $index Clicked!"),
                  ));
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.network(
                        "https://cdn.ostad.app/public/upload/2023-10-17T07-14-50.690Z-Logo-new.png",
                        fit: BoxFit.fitHeight,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Caption $index"),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        // List of items
        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  leading: Image.network(
                    "https://cdn.ostad.app/public/upload/2023-10-17T07-14-50.690Z-Logo-new.png",
                    fit: BoxFit.fitHeight,
                  ),
                  title: Text("Ostad $index"),
                  subtitle: Text("Ostad course 4 as a subtitile $index"));
            },
          ),
        ),
        // Upload Button
        SizedBox(
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Photos Uploaded Successfully!"),
              ));
            },
            child: const Icon(
              Icons.upload_outlined,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
