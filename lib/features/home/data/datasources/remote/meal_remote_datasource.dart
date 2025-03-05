import 'package:dartz/dartz.dart';
import 'package:tasty_planner/features/home/data/models/meal_model.dart';

import '../../../../../core/error/failures.dart' show Failure;

abstract class MealRemoteDatasource {

  Future<Either<Failure, List<MealModel>>> getAllMeals();
  Future<Either<Failure, MealModel>> createMeals({MealModel? meal});
  Future<Either<Failure, MealModel>> updateMeals({MealModel? meal});
  Future<Either<Failure, Unit>> deleteMeals({MealModel? meal});

}