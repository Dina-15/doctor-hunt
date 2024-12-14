import 'package:doctor_hunt/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/specialization_response_model.dart';

part 'specialization_states.freezed.dart';

@freezed
class SpecializationStates with _$SpecializationStates {
  const factory SpecializationStates.initial() = _Initial;

  const factory SpecializationStates.specializationsLoading() = SpecializationsLoading;
  const factory SpecializationStates.specializationsSuccess(List<SpecializationsData?>? specializationDataList) = SpecializationsSuccess;
  const factory SpecializationStates.specializationsError(ApiErrorModel apiErrorModel) =
  SpecializationsError;
}