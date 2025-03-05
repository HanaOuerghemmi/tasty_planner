import 'package:tasty_planner/features/home/domain/entities/meal_entity.dart';
import '../../../../core/core.dart';

class MealModel extends MealEntity {
  MealModel({
    int? id,
    required String title,
    required String description,
    required MealCategory category,
    required DateTime date,
  }) : super(
          id: id,
          title: title,
          description: description,
          category: category,
          date: date,
        );

  factory MealModel.fromJson(Map<String, dynamic> json) {
    return MealModel(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      category: MealModel.categoryFromString(json['category'] as String),
      date: DateTime.parse(json['date'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': categoryString,
      'date': date.toIso8601String(),
    };
  }

  MealModel copyWith({
    int? id,
    String? title,
    String? description,
    MealCategory? category,
    DateTime? date,
  }) {
    return MealModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      date: date ?? this.date,
    );
  }

  String get categoryString => category.toString().split('.').last;

  static MealCategory categoryFromString(String categoryString) {
    return MealCategory.values.firstWhere(
      (category) => category.toString().split('.').last == categoryString,
      orElse: () => MealCategory.breakfast, // Default category
    );
  }
}
