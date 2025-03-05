import 'package:dartz/dartz.dart';
import 'package:tasty_planner/features/home/data/models/meal_model.dart';
import '../../../../../core/core.dart';
abstract class MealLocalDatasource {
  Future<Either<Failure, MealModel>> createMeal(MealModel meal);
  Future<Either<Failure, List<MealModel>>> getAllMeals();
  Future<Either<Failure, Unit>> deleteMeal(int id);
  Future<Either<Failure, MealModel>> updateMeal(MealModel meal);
}
