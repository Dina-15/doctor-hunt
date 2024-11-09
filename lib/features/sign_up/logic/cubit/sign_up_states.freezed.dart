// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpStates<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpLoading,
    required TResult Function(T data) signUpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpLoading,
    TResult? Function(T data)? signUpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpLoading,
    TResult Function(T data)? signUpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUpFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) signUpLoading,
    required TResult Function(SignUpSuccess<T> value) signUpSuccess,
    required TResult Function(SignUpFailure<T> value) signUpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? signUpLoading,
    TResult? Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult? Function(SignUpFailure<T> value)? signUpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? signUpLoading,
    TResult Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult Function(SignUpFailure<T> value)? signUpFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStatesCopyWith<T, $Res> {
  factory $SignUpStatesCopyWith(
          SignUpStates<T> value, $Res Function(SignUpStates<T>) then) =
      _$SignUpStatesCopyWithImpl<T, $Res, SignUpStates<T>>;
}

/// @nodoc
class _$SignUpStatesCopyWithImpl<T, $Res, $Val extends SignUpStates<T>>
    implements $SignUpStatesCopyWith<T, $Res> {
  _$SignUpStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SignUpStatesCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignUpStates<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpLoading,
    required TResult Function(T data) signUpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUpFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpLoading,
    TResult? Function(T data)? signUpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUpFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpLoading,
    TResult Function(T data)? signUpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUpFailure,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) signUpLoading,
    required TResult Function(SignUpSuccess<T> value) signUpSuccess,
    required TResult Function(SignUpFailure<T> value) signUpFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? signUpLoading,
    TResult? Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult? Function(SignUpFailure<T> value)? signUpFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? signUpLoading,
    TResult Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult Function(SignUpFailure<T> value)? signUpFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SignUpStates<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SignUpLoadingImplCopyWith<T, $Res> {
  factory _$$SignUpLoadingImplCopyWith(_$SignUpLoadingImpl<T> value,
          $Res Function(_$SignUpLoadingImpl<T>) then) =
      __$$SignUpLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SignUpLoadingImplCopyWithImpl<T, $Res>
    extends _$SignUpStatesCopyWithImpl<T, $Res, _$SignUpLoadingImpl<T>>
    implements _$$SignUpLoadingImplCopyWith<T, $Res> {
  __$$SignUpLoadingImplCopyWithImpl(_$SignUpLoadingImpl<T> _value,
      $Res Function(_$SignUpLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpLoadingImpl<T> implements SignUpLoading<T> {
  const _$SignUpLoadingImpl();

  @override
  String toString() {
    return 'SignUpStates<$T>.signUpLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpLoading,
    required TResult Function(T data) signUpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUpFailure,
  }) {
    return signUpLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpLoading,
    TResult? Function(T data)? signUpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUpFailure,
  }) {
    return signUpLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpLoading,
    TResult Function(T data)? signUpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUpFailure,
    required TResult orElse(),
  }) {
    if (signUpLoading != null) {
      return signUpLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) signUpLoading,
    required TResult Function(SignUpSuccess<T> value) signUpSuccess,
    required TResult Function(SignUpFailure<T> value) signUpFailure,
  }) {
    return signUpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? signUpLoading,
    TResult? Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult? Function(SignUpFailure<T> value)? signUpFailure,
  }) {
    return signUpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? signUpLoading,
    TResult Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult Function(SignUpFailure<T> value)? signUpFailure,
    required TResult orElse(),
  }) {
    if (signUpLoading != null) {
      return signUpLoading(this);
    }
    return orElse();
  }
}

abstract class SignUpLoading<T> implements SignUpStates<T> {
  const factory SignUpLoading() = _$SignUpLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SignUpSuccessImplCopyWith<T, $Res> {
  factory _$$SignUpSuccessImplCopyWith(_$SignUpSuccessImpl<T> value,
          $Res Function(_$SignUpSuccessImpl<T>) then) =
      __$$SignUpSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SignUpSuccessImplCopyWithImpl<T, $Res>
    extends _$SignUpStatesCopyWithImpl<T, $Res, _$SignUpSuccessImpl<T>>
    implements _$$SignUpSuccessImplCopyWith<T, $Res> {
  __$$SignUpSuccessImplCopyWithImpl(_$SignUpSuccessImpl<T> _value,
      $Res Function(_$SignUpSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SignUpSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SignUpSuccessImpl<T> implements SignUpSuccess<T> {
  const _$SignUpSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SignUpStates<$T>.signUpSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of SignUpStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSuccessImplCopyWith<T, _$SignUpSuccessImpl<T>> get copyWith =>
      __$$SignUpSuccessImplCopyWithImpl<T, _$SignUpSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpLoading,
    required TResult Function(T data) signUpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUpFailure,
  }) {
    return signUpSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpLoading,
    TResult? Function(T data)? signUpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUpFailure,
  }) {
    return signUpSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpLoading,
    TResult Function(T data)? signUpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUpFailure,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) signUpLoading,
    required TResult Function(SignUpSuccess<T> value) signUpSuccess,
    required TResult Function(SignUpFailure<T> value) signUpFailure,
  }) {
    return signUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? signUpLoading,
    TResult? Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult? Function(SignUpFailure<T> value)? signUpFailure,
  }) {
    return signUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? signUpLoading,
    TResult Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult Function(SignUpFailure<T> value)? signUpFailure,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccess<T> implements SignUpStates<T> {
  const factory SignUpSuccess(final T data) = _$SignUpSuccessImpl<T>;

  T get data;

  /// Create a copy of SignUpStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpSuccessImplCopyWith<T, _$SignUpSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpFailureImplCopyWith<T, $Res> {
  factory _$$SignUpFailureImplCopyWith(_$SignUpFailureImpl<T> value,
          $Res Function(_$SignUpFailureImpl<T>) then) =
      __$$SignUpFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$SignUpFailureImplCopyWithImpl<T, $Res>
    extends _$SignUpStatesCopyWithImpl<T, $Res, _$SignUpFailureImpl<T>>
    implements _$$SignUpFailureImplCopyWith<T, $Res> {
  __$$SignUpFailureImplCopyWithImpl(_$SignUpFailureImpl<T> _value,
      $Res Function(_$SignUpFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$SignUpFailureImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$SignUpFailureImpl<T> implements SignUpFailure<T> {
  const _$SignUpFailureImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'SignUpStates<$T>.signUpFailure(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFailureImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of SignUpStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFailureImplCopyWith<T, _$SignUpFailureImpl<T>> get copyWith =>
      __$$SignUpFailureImplCopyWithImpl<T, _$SignUpFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpLoading,
    required TResult Function(T data) signUpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUpFailure,
  }) {
    return signUpFailure(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpLoading,
    TResult? Function(T data)? signUpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUpFailure,
  }) {
    return signUpFailure?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpLoading,
    TResult Function(T data)? signUpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUpFailure,
    required TResult orElse(),
  }) {
    if (signUpFailure != null) {
      return signUpFailure(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) signUpLoading,
    required TResult Function(SignUpSuccess<T> value) signUpSuccess,
    required TResult Function(SignUpFailure<T> value) signUpFailure,
  }) {
    return signUpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? signUpLoading,
    TResult? Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult? Function(SignUpFailure<T> value)? signUpFailure,
  }) {
    return signUpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? signUpLoading,
    TResult Function(SignUpSuccess<T> value)? signUpSuccess,
    TResult Function(SignUpFailure<T> value)? signUpFailure,
    required TResult orElse(),
  }) {
    if (signUpFailure != null) {
      return signUpFailure(this);
    }
    return orElse();
  }
}

abstract class SignUpFailure<T> implements SignUpStates<T> {
  const factory SignUpFailure(final ApiErrorModel apiErrorModel) =
      _$SignUpFailureImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of SignUpStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpFailureImplCopyWith<T, _$SignUpFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
