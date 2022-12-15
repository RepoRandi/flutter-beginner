import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:model/models/user.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String url = 'https://reqres.in/api/users?page=2';
  List<UserModel> users = [];

  Future getUsers() async {
    try {
      var response = await http.get(Uri.parse(url));
      List data = (json.decode(response.body) as Map<String, dynamic>)['data'];

      data.forEach(
        (element) {
          users.add(UserModel.fromJson(element));
        },
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Builder"),
      ),
      body: FutureBuilder(
        future: getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Text('Loading...'),
            );
          } else {
            if (users.isEmpty) {
              return const Center(
                child: Text('No Data'),
              );
            }
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    backgroundImage: NetworkImage(users[index].avatar),
                  ),
                  title: Text(
                      "${users[index].firstName} ${users[index].lastName}"),
                  subtitle: Text(users[index].email),
                );
              },
            );
          }
        },
      ),
    );
  }
}
