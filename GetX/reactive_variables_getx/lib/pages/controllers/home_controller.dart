import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt dataInt = 0.obs;
  RxString dataString = "First".obs;
  RxDouble dataDouble = 0.0.obs;
  RxBool dataBool = false.obs;
  RxList<int> dataList = [1, 2, 3].obs;
  RxSet<int> dataSet = RxSet<int>({1, 2, 3});
  RxMap<String, dynamic> dataMap = <String, dynamic>{
    "id": 1,
    "name": "Sultan",
    "age": 60,
  }.obs;

  void incrementInt() => dataInt++;
  void decrementInt() => dataInt--;

  void updates() => dataString.value = "Update Boy";
  void resets() => dataString.value = "Empty";

  void incrementDouble() => dataDouble.value++;
  void decrementDouble() => dataDouble.value--;

  void updateBool() => dataBool.toggle();

  int nextNumber = 4;
  void addDataList() {
    dataList.add(nextNumber);
    nextNumber++;
  }

  changeNumber() => dataList[0] = 99;

  void addDataSet() {
    dataSet.add(nextNumber);
    nextNumber++;
  }

  void changeSet() {
    dataSet.value = {99, 2, 3};
  }

  void changeName() {
    dataMap["name"] = "Raja";
  }
}
