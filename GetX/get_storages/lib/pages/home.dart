import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  LoginController loginC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage:
                  NetworkImage("https://loremflickr.com/320/240/99"),
            ),
            title: Text(loginC.emailC.value.text),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.logout_outlined),
        onPressed: () {
          loginC.logout();
        },
      ),
    );
  }
}
