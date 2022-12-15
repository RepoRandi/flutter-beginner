import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  height: 300,
                  color: Colors.grey,
                  child: ListView(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.person_add),
                        title: Text('User'),
                        subtitle: Text('Rosi'),
                      ),
                      ListTile(
                        leading: Icon(Icons.person_add),
                        title: Text('User'),
                        subtitle: Text('Ronald'),
                      ),
                      ListTile(
                        leading: Icon(Icons.person_add),
                        title: Text('User'),
                        subtitle: Text('Riszka'),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Text('Open Bottom Sheet')),
      ),
    );
  }
}
