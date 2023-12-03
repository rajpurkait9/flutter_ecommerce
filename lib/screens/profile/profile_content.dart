import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: Get.height * .06,
      child: Column(
        children: [
          const SizedBox(height: 20),
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Text(text)),
          const Divider(
            height: 1,
            thickness: .1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
