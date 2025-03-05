import 'package:tasty_planner/features/home/domain/entities/meal_entity.dart';

import '../../../../core/core.dart';


class MealModel extends MealEntity {
  MealModel({
    required String? title,
    required String? description,
    required MealCategory? category,
    required DateTime? date,
  }) : super(
         title: title!,
         description: description!,
         category: category!,
         date: date!,
       );

  String get categoryString => category.toString().split('.').last;

  static MealCategory categoryFromString(String categoryString) {
    return MealCategory.values.firstWhere(
      (category) => category.toString().split('.').last == categoryString,
      orElse: () => MealCategory.breakfast,  // Default category
    );
  }
}
