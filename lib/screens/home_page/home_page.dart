import 'package:ecommerce/controllers/home_page_controller.dart';
import 'package:ecommerce/screens/category_page.dart';
import 'package:ecommerce/screens/profile/profile_page.dart';
import 'package:ecommerce/utils/sp_icon.dart';
import 'package:ecommerce/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  HomePageController get controller => Get.put(HomePageController());
  List<Widget> get pages => const <Widget>[
        HomePageInner(),
        CategoryPage(),
        ProfilePage(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Ecommerce App'),
        ),
        body: Obx(() => IndexedStack(
              index: controller.currentIndex.value,
              children: pages,
            )),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              currentIndex: controller.currentIndex.value,
              onTap: (int index) {
                controller.changePage(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: SPIcon(iconPath: 'logo-black.png'),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SPIcon(iconPath: 'categories.png'),
                  label: 'Categories',
                ),
                BottomNavigationBarItem(
                  icon: SPIcon(iconPath: 'profile.png'),
                  label: 'Profile',
                ),
              ],
            )));
  }
}

class HomePageInner extends StatelessWidget {
  const HomePageInner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [CardWidgets()],
      ),
    );
  }
}
