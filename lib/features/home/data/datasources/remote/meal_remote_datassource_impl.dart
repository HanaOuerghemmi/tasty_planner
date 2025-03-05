import 'package:dartz/dartz.dart';
import 'package:tasty_planner/core/error/failures.dart';
import 'package:tasty_planner/features/home/data/datasources/remote/meal_remote_datasource.dart';
import 'package:tasty_planner/features/home/data/models/meal_model.dart';

class MealRemoteDatassourceImpl implements MealRemoteDatasource {
  @override
  Future<Either<Failure, MealModel>> createMeals({MealModel? meal}) {
    // TODO: implement createMeals
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteMeals({MealModel? meal}) {
    // TODO: implement deleteMeals
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MealModel>>> getAllMeals() {
    // TODO: implement getAllMeals
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, MealModel>> updateMeals({MealModel? meal}) {
    // TODO: implement updateMeals
    throw UnimplementedError();
  }
  
}