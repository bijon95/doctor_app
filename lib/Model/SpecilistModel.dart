// To parse this JSON data, do
//
//     final specilistModel = specilistModelFromJson(jsonString);

import 'dart:convert';

List<SpecilistModel> specilistModelFromJson(String str) => List<SpecilistModel>.from(json.decode(str).map((x) => SpecilistModel.fromJson(x)));

String specilistModelToJson(List<SpecilistModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SpecilistModel {
  SpecilistModel({
    this.id,
    this.title,
  });

  int id;
  String title;

  factory SpecilistModel.fromJson(Map<String, dynamic> json) => SpecilistModel(
    id: json["id"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
  };
}
