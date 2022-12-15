import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_variables_getx/pages/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive Variables'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () {
                  return Text(
                    '${homeC.dataInt}',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  );
                },
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: homeC.decrementInt,
                    child: const Text('-'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: homeC.incrementInt,
                    child: const Text('+'),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () {
                  return Text(
                    '${homeC.dataString}',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  );
                },
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: homeC.resets,
                    child: const Text('Reset'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: homeC.updates,
                    child: const Text('Update'),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () {
                  return Text(
                    '${homeC.dataDouble}',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  );
                },
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: homeC.decrementDouble,
                    child: const Text('-'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: homeC.incrementDouble,
                    child: const Text('+'),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () {
                  return Text(
                    '${homeC.dataBool}',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  );
                },
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: homeC.updateBool,
                    child: const Text('Bool'),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () {
                  return Text(
                    '${homeC.dataList}',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  );
                },
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: homeC.changeNumber,
                    child: const Text('Change'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: homeC.addDataList,
                    child: const Text('Add'),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () {
                  return Text(
                    '${homeC.dataSet}',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  );
                },
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: homeC.changeSet,
                    child: const Text('Change'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: homeC.addDataSet,
                    child: const Text('Add'),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 5,
          ),
          Row(
            children: [
              Expanded(
                child: Obx(
                  () => ListTile(
                    leading: CircleAvatar(
                      child: Text("${homeC.dataMap["id"]}"),
                    ),
                    title: Text("${homeC.dataMap["name"]}"),
                    subtitle: Text("${homeC.dataMap["age"]} tahun"),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: homeC.changeName, child: const Text("Change Name"))
            ],
          )
        ],
      ),
    );
  }
}
