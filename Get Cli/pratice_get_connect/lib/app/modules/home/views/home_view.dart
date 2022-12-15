import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/models/user_model.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<User>?>(
        future: controller.getAllUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                "No Data User",
                style: TextStyle(fontSize: 40),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage("${snapshot.data![index].avatar}"),
                ),
                title: Text(
                  "${snapshot.data![index].firstName} ${snapshot.data![index].lastName}",
                ),
                subtitle: Text(
                  "${snapshot.data![index].email}",
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
