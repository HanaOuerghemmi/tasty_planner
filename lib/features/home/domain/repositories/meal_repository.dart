import 'package:tasty_planner/features/home/domain/entities/meal_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';

abstract class MealRepository {
  Future<Either<Failure, List<MealEntity>>> getAllMeals();
  Future<Either<Failure, MealEntity>> createMeals({MealEntity? mealEntity});
  Future<Either<Failure, MealEntity>> updateMeals({MealEntity? mealEntity});
  Future<Either<Failure, Unit>> deleteMeals({int? id});

}