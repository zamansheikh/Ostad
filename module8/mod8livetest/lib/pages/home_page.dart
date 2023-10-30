import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        // Adapt the UI to the current orientation.
        if (orientation == Orientation.portrait) {
          return _buildPortraitUI();
        } else {
          return _buildLandscapeUI();
        }
      },
    );
  }

  Widget _buildPortraitUI() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    alignment: Alignment.center,
                    color: Colors.white54,
                    child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.network(
                            "https://cdn.ostad.app/user/avatar/2023-07-10T13-12-17.567Z-446F1D6B-E87E-45A7-8F88-61249A8C3565.jpg")));
              },
              separatorBuilder: (_, __) {
                return const Divider();
              },
              itemCount: 20,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildLandscapeUI() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white54,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.network(
                            "https://cdn.ostad.app/user/avatar/2023-07-10T13-12-17.567Z-446F1D6B-E87E-45A7-8F88-61249A8C3565.jpg"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white54,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.network(
                            "https://cdn.ostad.app/user/avatar/2023-07-10T13-12-17.567Z-446F1D6B-E87E-45A7-8F88-61249A8C3565.jpg"),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (_, __) {
                return const Divider();
              },
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
