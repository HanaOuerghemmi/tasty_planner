import 'package:flutter/material.dart';

Widget onbordingBuildPage({
  required String imagePath,
  required String title,
  required String subtitle,
  required BuildContext context,
}) {
  final theme = Theme.of(context);
  final screenHeight = MediaQuery.of(context).size.height;

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    spacing: 20,
    children: [
      Image.asset(imagePath, height: screenHeight * 0.35, fit: BoxFit.contain),
 
      Text(title, style: theme.textTheme.headlineMedium, textAlign: TextAlign.center),
    
      Text(subtitle, style: theme.textTheme.headlineSmall, textAlign: TextAlign.center),
    ],
  );
}
