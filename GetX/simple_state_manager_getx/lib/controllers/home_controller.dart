import 'package:get/get.dart';

class HomeController extends GetxController {
  int number = 0;

  void add() => number++;

  void refreshScreen() {
    update();
  }
}
