import 'package:ecommerce/Routes/all_routes.dart';
import 'package:ecommerce/controllers/login_page_controller.dart';
import 'package:ecommerce/controllers/register_user_page_controller.dart';
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
                Text(
                  "91+ ${some.mobileNo.value}",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            const SizedBox(height: 20),
            TextFormField(
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
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                label: Text("Enter your password"),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
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
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                const Text("Male"),
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                const Text("Female"),
              ],
            ),
            const SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                label: Text("91+ |  Alternate Mobile Number (optional)"),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              keyboardType: TextInputType.number,
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                label: Text("Enter your Address"),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                const Text("I agree to the "),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Terms & Conditions",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  if (some.validationKey.currentState!.validate()) {
                    Get.toNamed(Routes.home);
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  child: const Text("Create Account"),
                )),
            const SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}
