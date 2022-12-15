import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  late String id;
  late String name;
  late String email;
  late String image;
  final String url = 'https://reqres.in/api/users/2';

  @override
  void initState() {
    id = '';
    name = '';
    email = '';
    image = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFF92B7F),
                          Color(0xFFF58524),
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 145,
                    height: 145,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'ID: $id',
                style: const TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Name: $name',
                style: const TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Email: $email',
                style: const TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () async {
                  var result = await http.get(
                    Uri.parse(url),
                  );

                  if (result.statusCode == 200) {
                    Map<String, dynamic> data =
                        json.decode(result.body) as Map<String, dynamic>;

                    setState(() {
                      id = data['data']['id'].toString();
                      image = data['data']['avatar'].toString();
                      name =
                          '${data['data']['first_name']} ${data['data']['last_name']}';
                      email = data['data']['email'].toString();
                    });
                  } else {
                    setState(() {
                      id = 'Failed to fetch data';
                    });
                  }
                },
                child: const Text('Get Data'),
              ),
            ],
          ),
        ));
  }
}
