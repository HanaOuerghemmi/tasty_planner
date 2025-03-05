part of 'get_all_meal_cubit.dart';

@freezed
class GetAllMealState with _$GetAllMealState {
  const factory GetAllMealState.initial() = _Initial;
  const factory GetAllMealState.loading() = _LoadingMeals;
  const factory GetAllMealState.success({required  List<MealEntity> meals}) = _SuccessMeals;
  const factory GetAllMealState.error({required String message}) = _ErrorMeals;
}
