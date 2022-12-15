import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt data = 0.obs;

  void increment() => data++;
  void decrement() => data--;
}
