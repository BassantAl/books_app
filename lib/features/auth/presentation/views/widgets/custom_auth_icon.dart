import 'package:flutter/material.dart';

class CustomAuthIcon extends StatelessWidget {
  const CustomAuthIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.black,
      ),
      child: Icon(icon),
    );
  }
}
