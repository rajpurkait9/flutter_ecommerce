import 'dart:convert';

import 'package:ecommerce/models/login_model.dart';
import 'package:ecommerce/screens/login_signup/signup_form.dart';
import 'package:ecommerce/services/network_handler/network_handler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  TextEditingController mobileNoController = TextEditingController();
  var validationKey = GlobalKey<FormState>();

  void login() async {
    LoginModel loginModel = LoginModel(
      mobileNo: mobileNoController.text,
    );
    var response =
        await NetworkHandler.post(loginModelToJson(loginModel), "user/login");
    var data = json.decode(response);
    if (data['message'] == "register") {
      Get.snackbar("Message", "You are not registered yet");
      Get.to(() => SignUp());
    } else if (data['message'] == "login") {
      NetworkHandler.storeToken(data['token']);
      Get.snackbar("Message", "You are logged in");
    } else {
      Get.snackbar("Message", data['message']);
    }
  }
}
