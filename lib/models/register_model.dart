import 'dart:convert';

// convert json to data
RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

// conver data back to json
String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  String name;
  String email;
  String password;
  String passwordConfirmation;
  String gender;
  String mobile;
  String address;
  String alternateMobile;

  RegisterModel({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
    required this.address,
    required this.alternateMobile,
    required this.gender,
    required this.mobile,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
      name: json['mobile'],
      email: json['email'],
      password: json['password'],
      passwordConfirmation: json['passwordConfirmation'],
      address: json['address'],
      alternateMobile: json['alternate_mobile'],
      gender: json['gender'],
      mobile: json['mobile']);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'confirm_password': passwordConfirmation,
      'gender': gender,
      'mobile': mobile,
      'address': address,
      'another_mobile': alternateMobile,
    };
  }
}
