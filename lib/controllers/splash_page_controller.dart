import 'package:ecommerce/Routes/all_routes.dart';
import 'package:get/get.dart';

class SplashPageController extends GetxController {
  String splashText = "loading...";
  @override
  void onInit() {
    super.onInit();
    //TODO: check if user is logged in
    Future.delayed(const Duration(seconds: 1), () {
      Get.offAndToNamed(Routes.home);
    });
  }
}
