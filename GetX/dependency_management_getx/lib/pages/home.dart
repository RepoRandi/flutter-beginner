import 'package:dependency_management_getx/controllers/user_controller.dart';
import 'package:dependency_management_getx/pages/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final userC = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/200"),
              ),
              title: Text('${userC.user['name']}'),
              subtitle: Text('${userC.user['age']}'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserPage(),
                      ));
                },
                child: Text('Next Page'))
          ],
        ),
      ),
    );
  }
}
