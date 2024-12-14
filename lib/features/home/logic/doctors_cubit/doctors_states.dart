import 'package:doctor_hunt/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/doctors_response_model.dart';

part 'doctors_states.freezed.dart';

@freezed
class DoctorsStates with _$DoctorsStates {
  const factory DoctorsStates.initial() = _Initial;

  const factory DoctorsStates.doctorsLoading() = DoctorsLoading;
  const factory DoctorsStates.doctorsSuccess(List<DoctorsData?>? doctorsList) = DoctorsSuccess;
  const factory DoctorsStates.doctorsError(ApiErrorModel apiErrorModel) =
  DoctorsError;
}