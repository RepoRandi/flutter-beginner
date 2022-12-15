import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<Map<String, dynamic>> dataList = [
    {
      "id": "1",
      "country": "Indonesia",
    },
    {
      "id": "2",
      "country": "Singapore",
    },
    {
      "id": "3",
      "country": "Malaysia",
    },
    {
      "id": "4",
      "country": "Thailand",
    },
    {
      "id": "5",
      "country": "Brunei",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: DropdownSearch<Map<String, dynamic>>(
          dropdownBuilder: (context, selectedItem) {
            return ListTile(
              title: Text(
                  selectedItem?['country'] ?? "Haven't selected a country yet"),
            );
          },
          popupProps: PopupProps.menu(
            showSearchBox: true,
            itemBuilder: (context, item, isSelected) {
              return ListTile(
                title: Text(item["country"]),
              );
            },
          ),
          items: dataList,
          onChanged: (value) => print(value?["id"] ?? null),
          selectedItem: const {
            "id": "1",
            "country": "Indonesia",
          },
          clearButtonProps: const ClearButtonProps(
            isVisible: true,
          ),
          // dropdownDecoratorProps: const DropDownDecoratorProps(
          //   dropdownSearchDecoration: InputDecoration(
          //     labelText: "Choice Country",
          //   ),
          // ),
        ),
      ),
    );
  }
}
