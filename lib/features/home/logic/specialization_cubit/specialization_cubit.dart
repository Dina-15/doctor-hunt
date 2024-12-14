import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/doctors_response_model.dart';
import '../../data/models/specialization_response_model.dart';
import '../../data/repo/home_repo.dart';
import 'specialization_states.dart';

class SpecializationCubit extends Cubit<SpecializationStates> {
  final HomeRepo _homeRepo;
  SpecializationCubit(this._homeRepo) : super(const SpecializationStates.initial());

  List<SpecializationsData?>? specializationsList;
  List<DoctorsData?>? doctorsList;

  void getSpecializations() async {
    emit(const SpecializationStates.specializationsLoading());
    final response = await _homeRepo.getSpecialization();

    response.when(
      success: (specializationsResponseModel) {
        specializationsList =
            specializationsResponseModel.specializationDataList ;
       emit(SpecializationStates.specializationsSuccess(specializationsList));
      },
      failure: (apiErrorModel) {
        emit(SpecializationStates.specializationsError(apiErrorModel));
      },
    );
  }
}