import 'package:flutter/material.dart';

class SoalSatu extends StatelessWidget {
  const SoalSatu({
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
      body: const Center(
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 44),
        ),
      ),
    );
  }
}
