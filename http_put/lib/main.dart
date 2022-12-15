import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  final String url = 'https://reqres.in/api/users/2';
  String result = 'No Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http Put / Patch'),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextField(
              controller: nameC,
              autocorrect: false,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(Icons.person),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: jobC,
              autocorrect: false,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: "Job",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(Icons.work),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                var res = await http.put(Uri.parse(url), body: {
                  "name": nameC.text,
                  "job": jobC.text,
                });

                Map<String, dynamic> data =
                    json.decode(res.body) as Map<String, dynamic>;

                print(data);

                setState(() {
                  result =
                      'Halo ${data['name']}, kamu adalah seorang ${data['job']}. dan terupdate pada: ${data['updatedAt']}';
                });
              },
              child: const Text('Submit'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              result,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
