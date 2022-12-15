import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_storages/bindings/login_bindings.dart';
import 'package:get_storages/pages/home.dart';
import 'package:get_storages/pages/login.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginPage(),
      getPages: [
        GetPage(
          name: "/home",
          page: () => HomePage(),
          binding: LoginBindings(),
        ),
        GetPage(
          name: "/login",
          page: () => LoginPage(),
        ),
      ],
    );
  }
}
