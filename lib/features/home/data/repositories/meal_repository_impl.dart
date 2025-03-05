import 'package:dartz/dartz.dart';
import 'package:tasty_planner/core/error/failures.dart';
import 'package:tasty_planner/features/home/domain/entities/meal_entity.dart';
import 'package:tasty_planner/features/home/domain/repositories/meal_repository.dart';

class MealRepositoryImpl  implements MealRepository{
  @override
  Future<Either<Failure, MealEntity>> createMeals({MealEntity? mealEntity}) {
    // TODO: implement createAllMeals
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteMeals({MealEntity? deletedMeal}) {
    // TODO: implement deleteMeals
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MealEntity>>> getAllMeals() {
    // TODO: implement getAllMeals
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, MealEntity>> updateMeals({MealEntity? mealEntity}) {
    // TODO: implement updateAllMeals
    throw UnimplementedError();
  }
  
}