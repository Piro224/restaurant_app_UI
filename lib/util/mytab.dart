import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;

  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
            ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Image.asset(
            iconPath,
            color: Colors.red,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
