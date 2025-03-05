import 'dart:developer';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:tasty_planner/features/home/domain/entities/meal_entity.dart';
import 'package:tasty_planner/features/home/domain/usecases/create_meal_usecase.dart';

part 'create_meal_cubit.freezed.dart';
part 'create_meal_state.dart';

class CreateMealCubit extends Cubit<CreateMealState> {
  final CreateMealUsecase createMealUsecase;

  CreateMealCubit({required this.createMealUsecase})
      : super(CreateMealState.initial());

  Future<void> createMeal(MealEntity meal) async {
    emit(CreateMealState.loading());

    final result = await createMealUsecase(mealEntity: meal);
    result.fold(
      (failure) {
        log('Failed to plan meal: ${failure.message}');
        emit(CreateMealState.error(message: failure.message));
      },
      (createdMeal) {
        log('Event created successfully: $createdMeal');
        emit(CreateMealState.success(meal: createdMeal));
      },
    );
  }
}
