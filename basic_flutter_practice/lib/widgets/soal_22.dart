import 'dart:math';

import 'package:flutter/material.dart';

class SoalDuaPuluhDua extends StatelessWidget {
  const SoalDuaPuluhDua({
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
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.teal[50],
            border: Border.all(
              color: const Color(0xff0D47A1),
              width: 10,
            ),
            borderRadius: BorderRadius.circular(250 / 2),
            image: DecorationImage(
              image: NetworkImage(
                  "https://picsum.photos/id/${Random().nextInt(100)}/250/250"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
