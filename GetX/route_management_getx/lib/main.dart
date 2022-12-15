import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_management_getx/pages/home.dart';
import 'package:route_management_getx/pages/option.dart';
import 'package:route_management_getx/pages/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
      getPages: [
        GetPage(name: "/home", page: () => const Home()),
        GetPage(name: "/user", page: () => const User()),
        GetPage(name: "/option", page: () => const Option()),
      ],
    );
  }
}
