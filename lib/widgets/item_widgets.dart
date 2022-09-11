import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidgets extends StatelessWidget {
  // const ItemWidgets({Key? key, required this.item}) : super(key: key);
  final Item item;

  const ItemWidgets({super.key, required this.item});
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade100,
      child: ListTile(
        // leading: Image.asset("newimage.png"),
        title: Text(item.name),
        subtitle: Text(item.desc),

        // iconColor: Colors.yellow,
        trailing: Text(
          "\$${item.price.toString()}",
          textScaleFactor: 1,
          style: const TextStyle(fontSize: 15, color: Colors.deepPurpleAccent),
        ),
      ),
    );
  }
}
