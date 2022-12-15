import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(this.data);

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage("https://picsum.photos/200/300"),
      ),
      title: Text(
        data["name"],
      ),
      subtitle: Text("Rp. ${data["price"]}"),
    );
  }
} /*  */
