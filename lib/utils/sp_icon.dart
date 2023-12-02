import 'package:ecommerce/utils/theme.dart';
import 'package:flutter/material.dart';

class SPIcon extends StatelessWidget {
  const SPIcon({super.key, required this.iconPath});
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/$iconPath',
        width: 25, height: 25, fit: BoxFit.cover, color: AppColors.accent);
  }
}
