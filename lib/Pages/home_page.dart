import 'package:basic_to_advance/models/catalog.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widgets.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidgets(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
