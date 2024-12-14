import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/doctors_response_model.dart';
import '../../data/repo/home_repo.dart';
import 'doctors_states.dart';

class DoctorsCubit extends Cubit<DoctorsStates> {
  final HomeRepo _homeRepo;
  DoctorsCubit(this._homeRepo) : super(const DoctorsStates.initial());

  List<DoctorsData?>? doctorsList;

  void getAllDoctors() async {
    emit(const DoctorsStates.doctorsLoading());
    final response = await _homeRepo.getAllDoctors();

    response.when(
      success: (doctorsResponseModel) {
        doctorsList =
            doctorsResponseModel.doctorsList ;
        emit(DoctorsStates.doctorsSuccess(doctorsList));
      },
      failure: (apiErrorModel) {
        emit(DoctorsStates.doctorsError(apiErrorModel));
      },
    );
  }
}