import 'dart:math';

import 'package:flutter/material.dart';

class SoalEmpat extends StatelessWidget {
  const SoalEmpat({
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
        child: Transform.rotate(
          angle: pi / (180 / 90),
          child: const FlutterLogo(
            size: 250,
            style: FlutterLogoStyle.stacked,
          ),
        ),
      ),
    );
  }
}
