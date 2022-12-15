import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dropdown_search/dropdown_search.dart';
import '../../../data/models/province_model.dart';
import '../../../data/models/city_model.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Asal Pengiriman",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          DropdownSearch<Province>(
            popupProps: PopupProps.menu(
              showSearchBox: true,
              itemBuilder: (context, item, isSelected) {
                return ListTile(title: Text("${item.province}"));
              },
            ),
            dropdownDecoratorProps: const DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                labelText: "Provinsi Asal",
              ),
            ),
            asyncItems: (String filter) async {
              var response = await Dio().get(
                "https://api.rajaongkir.com/starter/province",
                queryParameters: {"key": "11baba2846489237767609e98f98d596"},
              );
              var models =
                  Province.fromJsonList(response.data["rajaongkir"]["results"]);
              return models;
            },
            onChanged: (value) =>
                controller.provAsalId.value = value?.provinceId ?? "0",
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownSearch<City>(
            popupProps: PopupProps.menu(
              showSearchBox: true,
              itemBuilder: (context, item, isSelected) {
                return ListTile(title: Text("${item.type} ${item.cityName}"));
              },
            ),
            dropdownDecoratorProps: const DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                labelText: "Kota / Kabupaten Asal",
              ),
            ),
            asyncItems: (String filter) async {
              var response = await Dio().get(
                "https://api.rajaongkir.com/starter/city?province=${controller.provAsalId}",
                queryParameters: {"key": "11baba2846489237767609e98f98d596"},
              );
              var models =
                  City.fromJsonList(response.data["rajaongkir"]["results"]);
              return models;
            },
            onChanged: (value) =>
                controller.cityAsalId.value = value?.cityId ?? "0",
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Tujuan Pengiriman",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          DropdownSearch<Province>(
            popupProps: PopupProps.menu(
              showSearchBox: true,
              itemBuilder: (context, item, isSelected) {
                return ListTile(title: Text("${item.province}"));
              },
            ),
            dropdownDecoratorProps: const DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                labelText: "Provinsi Tujuan",
              ),
            ),
            asyncItems: (String filter) async {
              var response = await Dio().get(
                "https://api.rajaongkir.com/starter/province",
                queryParameters: {"key": "11baba2846489237767609e98f98d596"},
              );
              var models =
                  Province.fromJsonList(response.data["rajaongkir"]["results"]);
              return models;
            },
            onChanged: (value) =>
                controller.provTujuanId.value = value?.provinceId ?? "0",
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownSearch<City>(
            popupProps: PopupProps.menu(
              showSearchBox: true,
              itemBuilder: (context, item, isSelected) {
                return ListTile(title: Text("${item.type} ${item.cityName}"));
              },
            ),
            dropdownDecoratorProps: const DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                labelText: "Kota / Kabupaten Tujuan",
              ),
            ),
            asyncItems: (String filter) async {
              var response = await Dio().get(
                "https://api.rajaongkir.com/starter/city?province=${controller.provTujuanId}",
                queryParameters: {"key": "11baba2846489237767609e98f98d596"},
              );
              var models =
                  City.fromJsonList(response.data["rajaongkir"]["results"]);
              return models;
            },
            onChanged: (value) =>
                controller.cityTujuanId.value = value?.cityId ?? "0",
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Berat Barang",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            controller: controller.beratC,
            autocorrect: false,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: "Berat (Gram)",
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Pilih Kurir",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownSearch<Map<String, dynamic>>(
            items: const [
              {
                "code": "jne",
                "name": "JNE",
              },
              {
                "code": "pos",
                "name": "Pos Indonesia",
              },
              {
                "code": "tiki",
                "name": "TIKI",
              },
            ],
            popupProps: PopupProps.menu(
              showSearchBox: true,
              itemBuilder: (context, item, isSelected) {
                return ListTile(title: Text("${item["name"]}"));
              },
            ),
            dropdownDecoratorProps: const DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                labelText: "Pilih Kurir",
              ),
            ),
            dropdownBuilder: (context, selectedItem) => Text(
              "${selectedItem?["name"] ?? "Belum memilih kurir"}",
            ),
            onChanged: (value) =>
                controller.codeKurir.value = value?["code"] ?? "",
          ),
          const SizedBox(
            height: 30,
          ),
          Obx(() {
            return ElevatedButton(
              onPressed: () {
                if (controller.isLoading.isFalse) {
                  controller.cekOngkir();
                }
              },
              child: Text(controller.isLoading.isFalse
                  ? "Cek Ongkos Kirim"
                  : "Loading..."),
            );
          }),
        ],
      ),
    );
  }
}
