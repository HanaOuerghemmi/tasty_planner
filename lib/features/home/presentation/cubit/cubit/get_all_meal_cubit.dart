import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasty_planner/features/home/domain/usecases/get_all_meals_usecase.dart';

import '../../../domain/entities/meal_entity.dart';

part 'get_all_meal_state.dart';
part 'get_all_meal_cubit.freezed.dart';

class GetAllMealCubit extends Cubit<GetAllMealState> {
    final GetAllMealsUsecase getAllMealsUsecase;

  GetAllMealCubit(this.getAllMealsUsecase) : super(GetAllMealState.initial());

    Future<void> getAllMeal() async {
    emit(GetAllMealState.loading());

    final result = await getAllMealsUsecase();
    result.fold(
      (failure) {
        log('Failed to fetch meals: ${failure.message}');
        emit(GetAllMealState.error(message: failure.message));
      },
      (meals) {
        log('fetch meals successfully: $meals');
        emit(GetAllMealState.success(meals: meals));
      },
    );
  }

}
