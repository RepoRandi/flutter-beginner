// To parse this JSON data, do
//
//     final districts = districtsFromJson(jsonString);

import 'dart:convert';

Districts districtsFromJson(String str) => Districts.fromJson(json.decode(str));

String districtsToJson(Districts data) => json.encode(data.toJson());

class Districts {
  Districts({
    required this.id,
    required this.idKabupaten,
    required this.name,
  });

  String id;
  String idKabupaten;
  String name;

  factory Districts.fromJson(Map<String, dynamic> json) => Districts(
        id: json["id"],
        idKabupaten: json["id_kabupaten"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "id_kabupaten": idKabupaten,
        "name": name,
      };

  @override
  String toString() => name;
}
