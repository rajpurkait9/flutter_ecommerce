import 'package:ecommerce/controllers/splash_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  SplashPageController get con => Get.put(SplashPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Image.asset('assets/images/logo-big.png', height: 200),
              const Text("E-Commerce App",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const Text("(Inspired by Myntra)",
                  style: TextStyle(fontSize: 22, color: Colors.purple)),
              const SizedBox(height: 20),
              Text(con.splashText, style: const TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
