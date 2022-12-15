import 'dart:convert';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:indonesian_region_data/models/districts.dart';
import 'package:indonesian_region_data/models/province.dart';
import 'package:indonesian_region_data/models/village.dart';

import '../models/city.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  String urlProvince =
      "https://api.binderbyte.com/wilayah/provinsi?api_key=d9eab4c278665f04744b942e588473e9b730abc7116ed4f6dfd381dc7c556264";
  String urlCity =
      "https://api.binderbyte.com/wilayah/kabupaten?api_key=d9eab4c278665f04744b942e588473e9b730abc7116ed4f6dfd381dc7c556264&id_provinsi=";
  String urlDistricts =
      "https://api.binderbyte.com/wilayah/kecamatan?api_key=d9eab4c278665f04744b942e588473e9b730abc7116ed4f6dfd381dc7c556264&id_kabupaten=";
  String urlVillage =
      "https://api.binderbyte.com/wilayah/kelurahan?api_key=d9eab4c278665f04744b942e588473e9b730abc7116ed4f6dfd381dc7c556264&id_kecamatan=";

  String? idProv;
  String? idCity;
  String? idDistricts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Wilayah Indonesia'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          DropdownSearch<Province>(
            dropdownBuilder: (context, selectedItem) => ListTile(
              title: Text(selectedItem?.name ?? "Belum memilih provinsi"),
            ),
            popupProps: PopupProps.menu(
              showSearchBox: true,
              itemBuilder: (context, item, isSelected) => ListTile(
                title: Text(item.name),
              ),
            ),
            asyncItems: (text) async {
              var response = await http.get(Uri.parse(urlProvince));
              if (response.statusCode == 200) {
                List allProvince = (json.decode(response.body)
                    as Map<String, dynamic>)["value"];

                List<Province> allModelProvince = [];

                allProvince.forEach((element) {
                  allModelProvince
                      .add(Province(id: element["id"], name: element["name"]));
                });

                return allModelProvince;
              } else {
                return [];
              }
            },
            onChanged: (value) => idProv = value?.id,
            clearButtonProps: const ClearButtonProps(
              isVisible: true,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownSearch<City>(
            dropdownBuilder: (context, selectedItem) => ListTile(
              title:
                  Text(selectedItem?.name ?? "Belum memilih kota / kabupaten"),
            ),
            popupProps: PopupProps.menu(
              showSearchBox: true,
              itemBuilder: (context, item, isSelected) => ListTile(
                title: Text(item.name),
              ),
            ),
            asyncItems: (text) async {
              var response =
                  await http.get(Uri.parse(urlCity + idProv.toString()));
              if (response.statusCode == 200) {
                List allCity = (json.decode(response.body)
                    as Map<String, dynamic>)["value"];

                List<City> allModelCity = [];

                allCity.forEach((element) {
                  allModelCity.add(City(
                      id: element["id"],
                      idProvinsi: element["id_provinsi"],
                      name: element["name"]));
                });

                return allModelCity;
              } else {
                return [];
              }
            },
            onChanged: (value) => idCity = value?.id,
            clearButtonProps: const ClearButtonProps(
              isVisible: true,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownSearch<Districts>(
            dropdownBuilder: (context, selectedItem) => ListTile(
              title: Text(selectedItem?.name ?? "Belum memilih kecamatan"),
            ),
            popupProps: PopupProps.menu(
              showSearchBox: true,
              itemBuilder: (context, item, isSelected) => ListTile(
                title: Text(item.name),
              ),
            ),
            asyncItems: (text) async {
              var response =
                  await http.get(Uri.parse(urlDistricts + idCity.toString()));
              if (response.statusCode == 200) {
                List allDistricts = (json.decode(response.body)
                    as Map<String, dynamic>)["value"];

                List<Districts> allModelDistricts = [];

                allDistricts.forEach((element) {
                  allModelDistricts.add(Districts(
                      id: element["id"],
                      idKabupaten: element["id_kabupaten"],
                      name: element["name"]));
                });

                return allModelDistricts;
              } else {
                return [];
              }
            },
            onChanged: (value) => idDistricts = value?.id,
            clearButtonProps: const ClearButtonProps(
              isVisible: true,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownSearch<Village>(
            dropdownBuilder: (context, selectedItem) => ListTile(
              title:
                  Text(selectedItem?.name ?? "Belum memilih kelurahan / desa"),
            ),
            popupProps: PopupProps.menu(
              showSearchBox: true,
              itemBuilder: (context, item, isSelected) => ListTile(
                title: Text(item.name),
              ),
            ),
            asyncItems: (text) async {
              var response = await http
                  .get(Uri.parse(urlVillage + idDistricts.toString()));
              if (response.statusCode == 200) {
                List allVillage = (json.decode(response.body)
                    as Map<String, dynamic>)["value"];

                List<Village> allModelVillage = [];

                allVillage.forEach((element) {
                  allModelVillage.add(Village(
                      id: element["id"],
                      idKecamatan: element["id_kecamatan"],
                      name: element["name"]));
                });

                return allModelVillage;
              } else {
                return [];
              }
            },
            onChanged: (value) => idDistricts = value?.id,
            clearButtonProps: const ClearButtonProps(
              isVisible: true,
            ),
          ),
        ],
      ),
    );
  }
}
