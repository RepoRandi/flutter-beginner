import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt dataPantau = 0.obs;

  void changeData() => dataPantau++;

  @override
  void onInit() {
    // ever(dataPantau, (data) => print("Perubahan"));
    // once(dataPantau, (data) => print("Perubahan cuma 1 x"));
    // debounce(
    //   dataPantau,
    //   (data) => print("Dieksekusi 2 detik setelah berhenti memantau"),
    //   time: Duration(seconds: 2),
    // );
    interval(
      dataPantau,
      (data) => print("Dieksekusi tiap 2 detik"),
      time: Duration(seconds: 2),
    );
    super.onInit();
  }
}
