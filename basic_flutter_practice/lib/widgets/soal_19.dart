import 'dart:math';

import 'package:flutter/material.dart';

class SoalSembilanBelas extends StatelessWidget {
  const SoalSembilanBelas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: const FlutterLogo(),
        title: const Text('Flutter Demo'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              print('Klik more');
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
                image: DecorationImage(
                  image: NetworkImage(
                      "https://picsum.photos/id/${10 + index}/200/300"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                "Hello ${index + 1}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
