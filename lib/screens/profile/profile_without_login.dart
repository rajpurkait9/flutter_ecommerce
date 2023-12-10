import 'package:ecommerce/screens/login_signup/login.dart';
import 'package:ecommerce/screens/profile/profile_content.dart';
import 'package:ecommerce/screens/profile/profile_item.dart';
import 'package:ecommerce/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({super.key});
  final double containerHeight = 160;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Page Without Login',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        elevation: 0,
        centerTitle: false,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                height: containerHeight * .7,
                width: double.infinity,
                color: Colors.white,
              ),
              Container(
                height: containerHeight * .4,
                width: double.infinity,
                color: AppColors.greyDark,
              ),
              Card(
                  elevation: 10,
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    backgroundColor: Colors.white,
                  )),
              const LoginBottomSheet(),
            ],
          ),
          const SizedBox(height: 20),
          const Column(
            children: [
              Column(
                children: [
                  // ProfileItem(
                  //   iconPath: 'profile.png',
                  //   title: 'My Profile',
                  //   subtitle: 'Manage your profile',
                  //   isLastItem: false,
                  // ),
                  ProfileItem(
                    iconPath: 'orders.png',
                    title: 'My Orders',
                    subtitle: 'Track your orders',
                    isLastItem: false,
                  ),
                  ProfileItem(
                    iconPath: 'wishlist.png',
                    title: 'My Wishlist',
                    subtitle: 'Manage your address',
                    isLastItem: false,
                  ),
                  ProfileItem(
                    iconPath: 'shopping-bag.png',
                    title: 'My Payment',
                    subtitle: 'Manage your payment',
                    isLastItem: true,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  ProfileItem(
                    iconPath: 'qr-code.png',
                    title: 'Scan QR Code for coupon',
                    isLastItem: false,
                  ),
                  ProfileItem(
                    iconPath: 'cost.png',
                    title: 'Refer and earn',
                    isLastItem: false,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  ProfileContent(
                    text: 'FAQ',
                  ),
                  ProfileContent(
                    text: 'About Us',
                  ),
                  ProfileContent(
                    text: 'Terms and Conditions',
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Version 1.0.0',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
