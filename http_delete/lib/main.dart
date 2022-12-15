import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Http Delete'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String data = 'No Data';
  final String url = 'https://reqres.in/api/users/2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () async {
                var user = await http.get(Uri.parse(url));

                Map<String, dynamic> body =
                    json.decode(user.body) as Map<String, dynamic>;

                setState(() {
                  data =
                      "Nama : ${body['data']['first_name']} ${body['data']['last_name']}";
                });
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                data,
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () async {
          var user = await http.delete(Uri.parse(url));

          setState(() {
            if (user.statusCode == 204) {
              data = 'Data has been deleted, status code: ${user.statusCode}';
            }
          });
        },
        tooltip: 'Delete',
        child: const Icon(
          Icons.delete_forever_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
