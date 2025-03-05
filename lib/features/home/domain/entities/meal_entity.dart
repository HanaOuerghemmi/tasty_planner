// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../../../core/core.dart';

class MealEntity extends Equatable {
  final String title;
  final String description;
  final MealCategory? category;
  final DateTime date;

 const MealEntity({
    required this.title,
    required this.description,
    this.category,
    required this.date,
  });
  
  @override
  List<Object?> get props => [title, description, category, date];
}
