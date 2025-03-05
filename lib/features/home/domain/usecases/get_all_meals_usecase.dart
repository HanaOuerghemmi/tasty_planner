import 'package:tasty_planner/features/home/domain/repositories/meal_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../entities/meal_entity.dart';
class GetAllMealsUsecase {
  final MealRepository mealRepository;

  GetAllMealsUsecase({required this.mealRepository});

   Future<Either<Failure, List<MealEntity>>> call()  async{
    return mealRepository.getAllMeals();
   }
} 