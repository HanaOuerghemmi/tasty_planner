// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_meal_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetAllMealState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MealEntity> meals) success,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MealEntity> meals)? success,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MealEntity> meals)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingMeals value) loading,
    required TResult Function(_SuccessMeals value) success,
    required TResult Function(_ErrorMeals value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingMeals value)? loading,
    TResult? Function(_SuccessMeals value)? success,
    TResult? Function(_ErrorMeals value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingMeals value)? loading,
    TResult Function(_SuccessMeals value)? success,
    TResult Function(_ErrorMeals value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllMealStateCopyWith<$Res> {
  factory $GetAllMealStateCopyWith(
    GetAllMealState value,
    $Res Function(GetAllMealState) then,
  ) = _$GetAllMealStateCopyWithImpl<$Res, GetAllMealState>;
}

/// @nodoc
class _$GetAllMealStateCopyWithImpl<$Res, $Val extends GetAllMealState>
    implements $GetAllMealStateCopyWith<$Res> {
  _$GetAllMealStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllMealState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GetAllMealStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllMealState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GetAllMealState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MealEntity> meals) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MealEntity> meals)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MealEntity> meals)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingMeals value) loading,
    required TResult Function(_SuccessMeals value) success,
    required TResult Function(_ErrorMeals value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingMeals value)? loading,
    TResult? Function(_SuccessMeals value)? success,
    TResult? Function(_ErrorMeals value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingMeals value)? loading,
    TResult Function(_SuccessMeals value)? success,
    TResult Function(_ErrorMeals value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetAllMealState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingMealsImplCopyWith<$Res> {
  factory _$$LoadingMealsImplCopyWith(
    _$LoadingMealsImpl value,
    $Res Function(_$LoadingMealsImpl) then,
  ) = __$$LoadingMealsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMealsImplCopyWithImpl<$Res>
    extends _$GetAllMealStateCopyWithImpl<$Res, _$LoadingMealsImpl>
    implements _$$LoadingMealsImplCopyWith<$Res> {
  __$$LoadingMealsImplCopyWithImpl(
    _$LoadingMealsImpl _value,
    $Res Function(_$LoadingMealsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllMealState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingMealsImpl implements _LoadingMeals {
  const _$LoadingMealsImpl();

  @override
  String toString() {
    return 'GetAllMealState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMealsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MealEntity> meals) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MealEntity> meals)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MealEntity> meals)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingMeals value) loading,
    required TResult Function(_SuccessMeals value) success,
    required TResult Function(_ErrorMeals value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingMeals value)? loading,
    TResult? Function(_SuccessMeals value)? success,
    TResult? Function(_ErrorMeals value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingMeals value)? loading,
    TResult Function(_SuccessMeals value)? success,
    TResult Function(_ErrorMeals value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingMeals implements GetAllMealState {
  const factory _LoadingMeals() = _$LoadingMealsImpl;
}

/// @nodoc
abstract class _$$SuccessMealsImplCopyWith<$Res> {
  factory _$$SuccessMealsImplCopyWith(
    _$SuccessMealsImpl value,
    $Res Function(_$SuccessMealsImpl) then,
  ) = __$$SuccessMealsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MealEntity> meals});
}

/// @nodoc
class __$$SuccessMealsImplCopyWithImpl<$Res>
    extends _$GetAllMealStateCopyWithImpl<$Res, _$SuccessMealsImpl>
    implements _$$SuccessMealsImplCopyWith<$Res> {
  __$$SuccessMealsImplCopyWithImpl(
    _$SuccessMealsImpl _value,
    $Res Function(_$SuccessMealsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllMealState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? meals = null}) {
    return _then(
      _$SuccessMealsImpl(
        meals:
            null == meals
                ? _value._meals
                : meals // ignore: cast_nullable_to_non_nullable
                    as List<MealEntity>,
      ),
    );
  }
}

/// @nodoc

class _$SuccessMealsImpl implements _SuccessMeals {
  const _$SuccessMealsImpl({required final List<MealEntity> meals})
    : _meals = meals;

  final List<MealEntity> _meals;
  @override
  List<MealEntity> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString() {
    return 'GetAllMealState.success(meals: $meals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessMealsImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  /// Create a copy of GetAllMealState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessMealsImplCopyWith<_$SuccessMealsImpl> get copyWith =>
      __$$SuccessMealsImplCopyWithImpl<_$SuccessMealsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MealEntity> meals) success,
    required TResult Function(String message) error,
  }) {
    return success(meals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MealEntity> meals)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(meals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MealEntity> meals)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(meals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingMeals value) loading,
    required TResult Function(_SuccessMeals value) success,
    required TResult Function(_ErrorMeals value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingMeals value)? loading,
    TResult? Function(_SuccessMeals value)? success,
    TResult? Function(_ErrorMeals value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingMeals value)? loading,
    TResult Function(_SuccessMeals value)? success,
    TResult Function(_ErrorMeals value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessMeals implements GetAllMealState {
  const factory _SuccessMeals({required final List<MealEntity> meals}) =
      _$SuccessMealsImpl;

  List<MealEntity> get meals;

  /// Create a copy of GetAllMealState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessMealsImplCopyWith<_$SuccessMealsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorMealsImplCopyWith<$Res> {
  factory _$$ErrorMealsImplCopyWith(
    _$ErrorMealsImpl value,
    $Res Function(_$ErrorMealsImpl) then,
  ) = __$$ErrorMealsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorMealsImplCopyWithImpl<$Res>
    extends _$GetAllMealStateCopyWithImpl<$Res, _$ErrorMealsImpl>
    implements _$$ErrorMealsImplCopyWith<$Res> {
  __$$ErrorMealsImplCopyWithImpl(
    _$ErrorMealsImpl _value,
    $Res Function(_$ErrorMealsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllMealState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorMealsImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorMealsImpl implements _ErrorMeals {
  const _$ErrorMealsImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GetAllMealState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMealsImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of GetAllMealState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMealsImplCopyWith<_$ErrorMealsImpl> get copyWith =>
      __$$ErrorMealsImplCopyWithImpl<_$ErrorMealsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MealEntity> meals) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MealEntity> meals)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MealEntity> meals)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingMeals value) loading,
    required TResult Function(_SuccessMeals value) success,
    required TResult Function(_ErrorMeals value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingMeals value)? loading,
    TResult? Function(_SuccessMeals value)? success,
    TResult? Function(_ErrorMeals value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingMeals value)? loading,
    TResult Function(_SuccessMeals value)? success,
    TResult Function(_ErrorMeals value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorMeals implements GetAllMealState {
  const factory _ErrorMeals({required final String message}) = _$ErrorMealsImpl;

  String get message;

  /// Create a copy of GetAllMealState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMealsImplCopyWith<_$ErrorMealsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
