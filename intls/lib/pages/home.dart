import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var faker = new Faker();

  String date = DateTime.now().toIso8601String();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INTL'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage:
                  NetworkImage(faker.image.image() + index.toString()),
            ),
            title: Text(faker.address.person.name()),
            subtitle: Text(
                DateFormat.yMMMMEEEEd().add_jms().format(DateTime.parse(date))),
          );
        },
      ),
    );
  }
}
