import 'package:tasty_planner/features/home/domain/repositories/meal_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../entities/meal_entity.dart';
class DeleteMealUsecase {
  final MealRepository mealRepository;

  DeleteMealUsecase({required this.mealRepository});

   Future<Either<Failure, Unit>> call({int? id})  async{
    return mealRepository.deleteMeals(id: id );
   }
} 