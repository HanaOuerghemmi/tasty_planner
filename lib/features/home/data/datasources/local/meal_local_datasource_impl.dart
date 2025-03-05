import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:dartz/dartz.dart';
import 'package:tasty_planner/core/error/failures.dart';
import 'package:tasty_planner/features/home/data/models/meal_model.dart';
import 'meal_local_datasource.dart';

class MealLocalDatasourceImpl implements MealLocalDatasource {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    final path = join(await getDatabasesPath(), 'meals.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE meals (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              title TEXT NOT NULL,
              description TEXT NOT NULL,
              category TEXT NOT NULL,
              date TEXT NOT NULL
          )
        ''');
      },
      onUpgrade: (db, oldVersion, newVersion) {
        // Handle database migration logic here if needed
      },
    );
  }

  @override
  Future<Either<Failure, MealModel>> createMeal(MealModel meal) async {
    try {
      final db = await database;
      final id = await db.insert('meals', meal.toJson());
      return Right(meal.copyWith(id: id));
    } catch (e) {
      return Left(DatabaseFailure('Failed to create meal: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MealModel>>> getAllMeals() async {
    try {
      final db = await database;
      final result = await db.query('meals');

      List<MealModel> meals = result.map((json) => MealModel.fromJson(json)).toList();
      return Right(meals);
    } catch (e) {
      return Left(DatabaseFailure('Failed to fetch meals: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteMeal(int id) async {
    try {
      final db = await database;
      final rowsDeleted = await db.delete('meals', where: 'id = ?', whereArgs: [id]);
      
      if (rowsDeleted == 0) {
        return Left(DatabaseFailure('Meal not found'));
      }
      
      return Right(unit);
    } catch (e) {
      return Left(DatabaseFailure('Failed to delete meal: $e'));
    }
  }

  @override
  Future<Either<Failure, MealModel>> updateMeal(MealModel meal) async {
    try {
      final db = await database;
      final rowsUpdated = await db.update('meals', meal.toJson(), where: 'id = ?', whereArgs: [meal.id]);
      
      if (rowsUpdated == 0) {
        return Left(DatabaseFailure('Meal not found'));
      }

      return Right(meal);
    } catch (e) {
      return Left(DatabaseFailure('Failed to update meal: $e'));
    }
  }
}
