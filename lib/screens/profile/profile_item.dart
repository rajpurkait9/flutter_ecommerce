import 'package:ecommerce/utils/sp_icon.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem(
      {super.key,
      required this.isLastItem,
      required this.iconPath,
      required this.title,
      this.subtitle});
  final String iconPath;
  final String title;
  final String? subtitle;
  final bool isLastItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: 68,
          child: ListTile(
            leading: SPIcon(iconPath: iconPath),
            title: Text(title, style: const TextStyle(fontSize: 14)),
            subtitle: subtitle != null
                ? Text('$subtitle', style: const TextStyle(fontSize: 12))
                : null,
            trailing: const Icon(Icons.arrow_forward_ios, size: 14),
          ),
        ),
        isLastItem
            ? Container()
            : const Divider(
                height: 1,
                thickness: .1,
                color: Colors.grey,
              ),
      ],
    );
  }
}
