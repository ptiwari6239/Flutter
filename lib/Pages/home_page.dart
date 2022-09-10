import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          "Catalog APP",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
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
      drawer: MyDrawer(),
    );
  }
}
