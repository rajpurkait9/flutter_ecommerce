import 'package:ecommerce/Routes/all_routes.dart';
import 'package:ecommerce/controllers/login_page_controller.dart';
import 'package:ecommerce/controllers/register_user_page_controller.dart';
import 'package:ecommerce/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final LoginPageController some = Get.find<LoginPageController>();
  final RegisterUserPageController con = Get.put(RegisterUserPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Sign Up"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          )),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: Form(
          key: con.validationKey,
          child: ListView(children: [
            Container(
              alignment: Alignment.center,
              child: Column(children: [
                const Text("Mobile Number", style: TextStyle(fontSize: 12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "91+ ${some.mobileNoController.text}",
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 10),
                    CircleAvatar(
                      backgroundColor: AppColors.accent,
                      radius: 14,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: con.nameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your name";
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                label: Text("Enter your name (optional)"),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: con.emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your email";
                }
                return null;
              },
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                label: Text("Enter your email (optional)"),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: con.passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                label: Text("Enter your password"),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: con.confirmPasswordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your confirm password";
                }
                return null;
              },
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                label: Text("Enter your confirm password"),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Obx(() => Checkbox(
                      value: con.gender.value == "male" ? true : false,
                      fillColor: MaterialStateProperty.all(AppColors.accent),
                      onChanged: (value) {
                        con.gender.value = "male";
                      },
                    )),
                const Text("Male"),
                Obx(() => Checkbox(
                      value: con.gender.value == "female" ? true : false,
                      fillColor: MaterialStateProperty.all(AppColors.accent),
                      onChanged: (value) {
                        con.gender.value = "female";
                      },
                    )),
                const Text("Female"),
              ],
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: con.alternateMobileNoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                label: Text("91+ |  Alternate Mobile Number (optional)"),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: con.addressController,
              keyboardType: TextInputType.number,
              maxLines: 3,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                label: Text("Enter your Address"),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Obx(() => Checkbox(
                      value: con.isAgree.value,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => AppColors.accent),
                      onChanged: (value) {
                        con.isAgree.value = value!;
                      },
                    )),
                const Text("I agree to the "),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Terms & Conditions",
                      style: TextStyle(color: AppColors.accent),
                    ))
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.accent,
              ),
              onPressed: () {
                if (some.validationKey.currentState!.validate()) {
                  Get.toNamed(Routes.home);
                }
              },
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  child: const Text("Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ))),
            ),
            const SizedBox(height: 30),
          ]),
        ),
      ),
    );
  }
}
