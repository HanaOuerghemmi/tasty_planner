// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import '../../../../core/core.dart';

class MealEntity extends Equatable {
  final int? id;
  final String title;
  final String description;
  final MealCategory category;
  final DateTime date;

  const MealEntity({
    this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.date,
  });

  MealEntity copyWith({
    int? id,
    String? title,
    String? description,
    MealCategory? category,
    DateTime? date,
  }) {
    return MealEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      date: date ?? this.date,
    );
  }

  @override
  List<Object?> get props => [id, title, description, category, date];
}
