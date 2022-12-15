import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              isDismissible: false,
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              builder: ((context) => SizedBox(
                    height: 300,
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          onTap: () => print('Click Photo'),
                          leading: Icon(Icons.photo),
                          title: Text('Photo'),
                        ),
                        ListTile(
                          onTap: () => print('Click Video'),
                          leading: Icon(Icons.video_collection),
                          title: Text('Video'),
                        ),
                        ListTile(
                          onTap: () => print('Click Music'),
                          leading: Icon(Icons.music_note_outlined),
                          title: Text('Music'),
                        ),
                        ListTile(
                          onTap: () => print('Click Album'),
                          leading: Icon(Icons.photo_album),
                          title: Text('Album'),
                        ),
                        ListTile(
                          onTap: () => Navigator.pop(context),
                          leading: Icon(Icons.cancel),
                          title: Text('Cancel'),
                        ),
                      ],
                    ),
                  )),
            );
          },
          child: const Text('Click Me'),
        ),
      ),
    );
  }
}
