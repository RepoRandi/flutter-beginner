import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool rememberMe = false.obs;

  void login() {
    final box = GetStorage();
    if (emailC.text == "randi@gmail.com" && passC.text == "password") {
      if (box.read("dataRememberMe") != null) {
        box.remove("dataRememberMe");
      }
      if (rememberMe.isTrue) {
        box.write(
          "dataRememberMe",
          {
            "email": emailC.text,
            "password": passC.text,
          },
        );
      }
      Get.snackbar("Success", "Welcome ${emailC.value.text}");
      Get.offAllNamed("/home");
    } else {
      Get.snackbar("Failed", "Email or Password is wrong");
    }
  }

  void logout() {
    Get.snackbar("Success", "Good Bye ${emailC.value.text}");
    Get.toNamed("/login");
  }
}
