import 'package:dartz/dartz.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tasty_planner/core/error/failures.dart';
import 'package:tasty_planner/features/home/domain/entities/meal_entity.dart';
import 'package:tasty_planner/features/home/domain/repositories/meal_repository.dart';
import 'package:tasty_planner/features/home/data/datasources/local/meal_local_datasource.dart';
import 'package:tasty_planner/features/home/data/models/meal_model.dart';

class MealRepositoryImpl implements MealRepository {
  final MealLocalDatasource localDatasource;

  MealRepositoryImpl({required this.localDatasource});

  @override
  Future<Either<Failure, List<MealEntity>>> getAllMeals() async {
    try {
      final mealsResult = await localDatasource.getAllMeals();

      // Check if the result is a success or failure
      return mealsResult.fold(
        (failure) => Left(failure), // Return the failure if it exists
        (mealsModelList) {
          // Convert MealModel list to MealEntity list (if needed)
          final mealsEntityList =
              mealsModelList.map((mealModel) {
                return MealEntity(
                  title: mealModel.title,
                  description: mealModel.description,
                  category: mealModel.category,
                  date: mealModel.date,
                );
              }).toList();

          return Right(mealsEntityList);
        },
      );
    } on DatabaseException {
      return Left(DatabaseFailure('Failed to fetch meals'));
    }
  }

  @override
  Future<Either<Failure, MealEntity>> createMeals({MealEntity? mealEntity}) async {
    try {
      final MealModel mealModel = MealModel(
        id: mealEntity!.id,
        title: mealEntity.title,
        description: mealEntity.description,
        category: mealEntity.category,
        date: mealEntity.date,
      );
      await localDatasource.createMeal(mealModel);
      return right(mealEntity);
    } on DatabaseException {
      return Left(DatabaseFailure('Failed to fetch meals'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteMeals({int? id}) async {
    return await localDatasource.deleteMeal(id!);
  }

  @override
  Future<Either<Failure, MealEntity>> updateMeals({MealEntity? mealEntity}) async {
     try {
      final MealModel mealModel = MealModel(
        id: mealEntity!.id,
        title: mealEntity.title,
        description: mealEntity.description,
        category: mealEntity.category,
        date: mealEntity.date,
      );
      await localDatasource.updateMeal(mealModel);
      return right(mealEntity);
    } on DatabaseException {
      return Left(DatabaseFailure('Failed to fetch meals'));
    }
  }
}
