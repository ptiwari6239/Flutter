import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Catalog App",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: const Center(
        child: Text(
          "Welcome To My App",
          style: TextStyle(color: Colors.red),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
