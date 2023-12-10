import 'package:ecommerce/controllers/login_page_controller.dart';
import 'package:ecommerce/screens/login_signup/signup_form.dart';
import 'package:ecommerce/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({super.key});
  LoginPageController get con => Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: Get.height * .01 - 5,
        left: Get.width * 1 / 2 - 1,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.accents[1],
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                        icon: const Icon(Icons.shopping_cart_outlined,
                            color: AppColors.accent),
                        title: const Text('Login/Sign Up'),
                        content: const Text(
                          'please enter phone number',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        actions: [
                          TextField(
                            controller: con.mobileNoController,
                            maxLength: 10,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: false, signed: false),
                            autofocus: true,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                hintText: 'Enter phone number '),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                con.setMobileNo(con.mobileNoController.text);
                                if (con.mobileNo.value == "9654674687") {
                                  // con.mobileNoController.clear();
                                  Get.to(SignUp());
                                } else {
                                  Get.snackbar(
                                      "error", "your number is incorrect");
                                }
                              },
                              child: const Text("ok"))
                        ]));
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            width: Get.width * .3,
            alignment: Alignment.center,
            child: const Text('Login/Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 12)),
          ),
        ));
  }
}
