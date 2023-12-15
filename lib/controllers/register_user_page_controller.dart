import 'dart:convert';

import 'package:ecommerce/models/register_model.dart';
import 'package:ecommerce/screens/home_page/home_page.dart';
import 'package:ecommerce/services/network_handler/network_handler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterUserPageController extends GetxController {
// for form controller
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController alternateMobileNoController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  RxString gender = "".obs;
  RxBool isAgree = false.obs;

  // for validation
  var validationKey = GlobalKey<FormState>();

  void register() async {
    RegisterModel registerModel = RegisterModel(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        passwordConfirmation: passwordController.text,
        address: addressController.text,
        alternateMobile: alternateMobileNoController.text,
        gender: gender.value,
        mobile: alternateMobileNoController.text);

    var response = await NetworkHandler.post(
        registerModelToJson(registerModel), "user/register");
    var data = json.decode(response);
    NetworkHandler.storeToken(data['user']['token']);
    Get.offAll(const HomePage());
  }
}
