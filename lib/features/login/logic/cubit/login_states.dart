import 'package:doctor_hunt/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_states.freezed.dart';

@Freezed()
class LoginStates<T> with _$LoginStates<T> {
  const factory LoginStates.initial() = _Initial;

  const factory LoginStates.loginLoading() = LoginLoading;
  const factory LoginStates.loginSuccess(T data) = LoginSuccess<T>;
  const factory LoginStates.loginFailure(ApiErrorModel apiErrorModel) = LoginFailure;
}