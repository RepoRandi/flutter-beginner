import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faker'),
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
            subtitle: Text(faker.job.title()),
          );
        },
      ),
    );
  }
}
