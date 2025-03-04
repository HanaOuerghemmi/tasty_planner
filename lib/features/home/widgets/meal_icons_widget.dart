import 'package:flutter/material.dart';

class MealIconWidget extends StatelessWidget {
  final IconData icon;

  const MealIconWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: BoxDecoration(
        color: Colors.orangeAccent.withOpacity(0.2),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 30,
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}
