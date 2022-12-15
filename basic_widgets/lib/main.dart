import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Widgets'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Hello Widgets!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const FlutterLogo(
                size: 100,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print('Button pressed');
                },
                child: const Text('Elevated Button'),
              ),
              const SizedBox(height: 20),
              const Icon(
                Icons.add_a_photo_rounded,
                size: 100,
                color: Colors.teal,
              ),
              const SizedBox(height: 20),
              const Image(
                image: NetworkImage("https://picsum.photos/id/1/200/300"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
