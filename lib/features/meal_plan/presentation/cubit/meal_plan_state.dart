part of 'meal_plan_cubit.dart';

abstract class MealPlanState extends Equatable {
  const MealPlanState();

  @override
  List<Object> get props => [];
}

class MealPlanInitial extends MealPlanState {}
