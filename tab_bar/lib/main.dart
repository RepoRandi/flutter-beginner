import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabC = TabController(length: 5, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: false,
        bottom: TabBar(
          controller: tabC,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              icon: Icon(Icons.chat),
            ),
            Tab(
              icon: Icon(Icons.call),
            ),
            Tab(
              icon: Icon(Icons.video_call),
            ),
            Tab(
              icon: Icon(Icons.contacts),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabC,
        children: const [
          Center(
            child: Text("Camera"),
          ),
          Center(
            child: Text("Chats"),
          ),
          Center(
            child: Text("Calls"),
          ),
          Center(
            child: Text("Videos"),
          ),
          Center(
            child: Text("Contacts"),
          ),
        ],
      ),
    );
  }
}
