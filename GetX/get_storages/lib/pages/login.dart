import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_storages/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final box = GetStorage();

  final loginC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    if (box.read("dataRememberMe") != null) {
      loginC.emailC.text = box.read("dataRememberMe")["email"];
      loginC.passC.text = box.read("dataRememberMe")["password"];
      loginC.rememberMe.value = true;
    }
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
        children: [
          TextField(
            controller: loginC.emailC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Obx(
            () => TextField(
              controller: loginC.passC,
              autocorrect: false,
              obscureText: loginC.isHidden.value,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () => loginC.isHidden.toggle(),
                    icon: const Icon(Icons.remove_red_eye)),
                labelText: "Password",
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          Obx(
            () => CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: loginC.rememberMe.value,
              title: const Text("Remember me"),
              onChanged: (value) {
                loginC.rememberMe.toggle();
              },
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              loginC.login();
            },
            child: const Text("Sign In"),
          )
        ],
      ),
    );
  }
}
