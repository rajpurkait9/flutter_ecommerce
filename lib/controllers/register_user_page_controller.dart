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
}
