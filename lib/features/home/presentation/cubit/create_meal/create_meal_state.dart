


part of 'create_meal_cubit.dart';

@freezed
class CreateMealState with _$CreateMealState {
  const factory CreateMealState.initial() = _Initial;
  const factory CreateMealState.loading() = _Loading;
  const factory CreateMealState.success({required MealEntity meal}) = _Success;
  const factory CreateMealState.error({required String message}) = _Error;
}
