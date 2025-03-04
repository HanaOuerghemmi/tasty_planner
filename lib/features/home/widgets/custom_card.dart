import 'package:flutter/material.dart';

import 'meal_details_widget.dart';
import 'meal_icons_widget.dart';

  Widget customCard(ThemeData theme, String title, String description, IconData icon) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MealIconWidget(icon: icon),
            MealDetailsWidget(title: title, description: description),
          ],
        ),
      ),
    );
  }