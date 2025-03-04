import 'package:flutter/material.dart';

import '../../../core.dart';

//********* Build dot indicator for the current page **********/
Widget onbordingBuildDot({
  required int index,
  required int currentPage,
  context,
}) {
  final theme = Theme.of(context);

  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    margin: const EdgeInsets.symmetric(horizontal: 5),
    height: 10,
    width: currentPage == index ? 20 : 10,
    decoration: BoxDecoration(
      color: currentPage == index ? theme.primaryColor : AppColors.grey,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
