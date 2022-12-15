// To parse this JSON data, do
//
//     final village = villageFromJson(jsonString);

import 'dart:convert';

Village villageFromJson(String str) => Village.fromJson(json.decode(str));

String villageToJson(Village data) => json.encode(data.toJson());

class Village {
  Village({
    required this.id,
    required this.idKecamatan,
    required this.name,
  });

  String id;
  String idKecamatan;
  String name;

  factory Village.fromJson(Map<String, dynamic> json) => Village(
        id: json["id"],
        idKecamatan: json["id_kecamatan"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "id_kecamatan": idKecamatan,
        "name": name,
      };

  @override
  String toString() => name;
}
