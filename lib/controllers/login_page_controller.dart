import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  RxString mobileNo = "".obs;

  TextEditingController mobileNoController = TextEditingController();
  var validationKey = GlobalKey<FormState>();
  void setMobileNo(String value) => mobileNo.value = value;
}
