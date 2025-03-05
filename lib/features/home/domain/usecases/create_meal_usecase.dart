import 'package:tasty_planner/features/home/domain/repositories/meal_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../entities/meal_entity.dart';
class CreateMealUsecase {
  final MealRepository mealRepository;

  CreateMealUsecase({required this.mealRepository});

   Future<Either<Failure, MealEntity>> call({MealEntity? mealEntity})  async{
    return mealRepository.createMeals(mealEntity: mealEntity );
   }
} 