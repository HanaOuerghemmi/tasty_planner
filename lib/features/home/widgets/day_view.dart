import 'package:flutter/material.dart';

import '../../../core/core.dart';
import 'custom_card.dart';


  Widget dayView(DateTime day, ThemeData theme, String locale) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Meal Plan for ${AppConstants.formatDate(day, 'EEEE', locale)}",
            style: theme.textTheme.headlineMedium,
          ),
          customCard(
              theme, "Meal Plan", "Details for ${AppConstants.formatDate(day, 'EEEE', locale)} will appear here.", Icons.local_cafe),
          customCard(
              theme, "Lunch", "Details for ${AppConstants.formatDate(day, 'EEEE', locale)} will appear here.", Icons.lunch_dining),
          customCard(
              theme, "Dinner", "Details for ${AppConstants.formatDate(day, 'EEEE', locale)} will appear here.", Icons.cookie),
        ],
      ),
    );
  }


