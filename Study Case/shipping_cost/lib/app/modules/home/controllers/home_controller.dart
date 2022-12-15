import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:dio/dio.dart";
import 'package:shipping_cost/app/data/models/ongkir_model.dart';

class HomeController extends GetxController {
  TextEditingController beratC = TextEditingController();

  RxString provAsalId = "0".obs;
  RxString cityAsalId = "0".obs;
  RxString provTujuanId = "0".obs;
  RxString cityTujuanId = "0".obs;

  RxString codeKurir = "".obs;

  List<Ongkir> ongkosKirim = [];

  RxBool isLoading = false.obs;

  void cekOngkir() async {
    if (provAsalId.isNotEmpty &&
        cityAsalId.isNotEmpty &&
        provTujuanId.isNotEmpty &&
        cityTujuanId.isNotEmpty &&
        beratC.text.isNotEmpty &&
        codeKurir.isNotEmpty) {
      try {
        isLoading.value = true;

        var response = await Dio().post(
          "https://api.rajaongkir.com/starter/cost",
          options: Options(
            headers: {
              "key": "11baba2846489237767609e98f98d596",
              "content-type": "application/x-www-form-urlencoded"
            },
          ),
          data: {
            "origin": cityAsalId.value,
            "destination": cityTujuanId.value,
            "weight": beratC.text,
            "courier": codeKurir.value,
          },
        );

        isLoading.value = false;

        List ongkir =
            response.data["rajaongkir"]["results"][0]["costs"] as List;
        ongkosKirim = Ongkir.fromJsonList(ongkir);

        Get.defaultDialog(
          title: "Ongkos Kirim",
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: ongkosKirim
                .map((e) => ListTile(
                      leading: Text(e.service!),
                      title: Text("Rp.${e.cost![0].value}"),
                      subtitle: Text("${e.cost![0].etd} hari"),
                    ))
                .toList(),
          ),
        );
      } catch (e) {
        Get.defaultDialog(
          title: "Terjadi Kesalahan",
          middleText: "Tidak dapat mengecek ongkos kirim",
        );
      }
    } else {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Data input belum lengkap",
      );
    }
  }
}
