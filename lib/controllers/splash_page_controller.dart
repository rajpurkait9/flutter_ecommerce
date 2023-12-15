import 'package:ecommerce/Routes/all_routes.dart';
import 'package:ecommerce/screens/profile/profile_page.dart';
import 'package:ecommerce/services/network_handler/network_handler.dart';
import 'package:get/get.dart';

class SplashPageController extends GetxController {
  String splashText = "loading...";
  @override
  void onInit() {
    super.onInit();
    checkToken();
  }

  void checkToken() async {
    var token = await NetworkHandler.getToken();
    if (token != null) {
      Future.delayed(const Duration(seconds: 1), () {
        Get.snackbar("unauthorized", "Please login first");
        // Get.to(const ProfilePage());
        Get.offAndToNamed(Routes.home);
      });
    } else {
      Future.delayed(const Duration(seconds: 1), () {
        Get.offAndToNamed(Routes.home);
      });
    }
  }
}
