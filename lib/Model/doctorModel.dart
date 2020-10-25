// To parse this JSON data, do
//
//     final doctorModel = doctorModelFromJson(jsonString);

import 'dart:convert';

List<DoctorModel> doctorModelFromJson(String str) => List<DoctorModel>.from(json.decode(str).map((x) => DoctorModel.fromJson(x)));

String doctorModelToJson(List<DoctorModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DoctorModel {
  DoctorModel({
    this.id,
    this.fullName,
    this.userName,
    this.password,
    this.type,
    this.phone,
    this.email,
    this.specialist,
    this.image,
    this.address,
    this.birthday,
    this.description,
    this.status,
    this.joined,
    this.emailVerification,
  });

  int id;
  String fullName;
  String userName;
  String password;
  String type;
  String phone;
  String email;
  int specialist;
  String image;
  String address;
  String birthday;
  String description;
  String status;
  DateTime joined;
  dynamic emailVerification;

  factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
    id: json["id"],
    fullName: json["full_name"],
    userName: json["user_name"],
    password: json["password"],
    type: json["type"],
    phone: json["phone"],
    email: json["email"],
    specialist: json["specialist"],
    image: json["image"],
    address: json["address"],
    birthday: json["birthday"],
    description: json["description"],
    status: json["status"],
    joined: DateTime.parse(json["joined"]),
    emailVerification: json["email_verification"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "full_name": fullName,
    "user_name": userName,
    "password": password,
    "type": type,
    "phone": phone,
    "email": email,
    "specialist": specialist,
    "image": image,
    "address": address,
    "birthday": birthday,
    "description": description,
    "status": status,
    "joined": joined.toIso8601String(),
    "email_verification": emailVerification,
  };
}
