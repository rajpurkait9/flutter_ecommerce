import 'package:ecommerce/screens/profile/profile_item.dart';
import 'package:ecommerce/utils/theme.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Container(
            height: containerHeight * .59,
            width: double.infinity,
            color: AppColors.greyDark,
            child: const Center(
              child: Text(
                'Please Login to see your profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: containerHeight * .41,
            width: double.infinity,
            color: Colors.white,
            child: const Center(
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Column(
            children: [
              Column(
                children: [
                  ProfileItem(
                    iconPath: 'profile.png',
                    title: 'My Profile',
                    subtitle: 'Manage your profile',
                    isLastItem: false,
                  ),
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
            ],
          ),
        ],
      ),
    );
  }
}
