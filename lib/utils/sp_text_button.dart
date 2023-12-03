import 'package:flutter/material.dart';

class SpTextButton extends StatelessWidget {
  const SpTextButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(text),
        ],
      ),
    );
  }
}
