

import 'package:doctor_hunt/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_states.freezed.dart';

@Freezed()
class SignUpStates<T> with _$SignUpStates<T> {
  const factory SignUpStates.initial() = _Initial;
  const factory SignUpStates.signUpLoading() = SignUpLoading;
  const factory SignUpStates.signUpSuccess(T data) = SignUpSuccess<T>;
  const factory SignUpStates.signUpFailure(ApiErrorModel apiErrorModel) = SignUpFailure;

}