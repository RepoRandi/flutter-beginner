import 'package:bindings_builder_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class CounterBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
  }
}
