import 'package:tasty_planner/features/home/domain/repositories/meal_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../entities/meal_entity.dart';
class UpdateMealUsecase {
  final MealRepository mealRepository;

  UpdateMealUsecase({required this.mealRepository});

   Future<Either<Failure, MealEntity>> call({MealEntity? mealEntity})  async{
    return mealRepository.updateMeals(mealEntity: mealEntity );
   }
} 