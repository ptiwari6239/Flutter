import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Catalog APP",
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Welcome To My App",
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
