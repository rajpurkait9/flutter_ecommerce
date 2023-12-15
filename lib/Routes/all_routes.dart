import 'package:ecommerce/screens/category_page.dart';
import 'package:ecommerce/screens/home_page/home_page.dart';
import 'package:ecommerce/screens/login_signup/signup_form.dart';
import 'package:ecommerce/screens/profile/profile_page.dart';
import 'package:ecommerce/screens/profile/profile_without_login.dart';
import 'package:ecommerce/screens/splash_page.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class Routes {
  static const String home = '/';
  static const String splash = '/splash';
  static const String category = '/category';
  static const String profile = '/profile/without_login';
  static const String profileLogin = '/profile/with_login';
  static const String signUp = '/sign_up';
}

class AppPages {
  static const initial = Routes.splash;
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.splash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: Routes.category,
      page: () => const CategoryPage(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfileWithoutLogin(),
    ),
    GetPage(
      name: Routes.profileLogin,
      page: () => const ProfilePage(),
    ),
    GetPage(name: Routes.signUp, page: () => SignUp()),
  ];
}
