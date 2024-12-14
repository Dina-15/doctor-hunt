import 'package:doctor_hunt/core/routing/routes_export.dart';
import 'package:doctor_hunt/features/home/logic/doctors_cubit/doctors_states.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/models/doctors_response_model.dart';
import '../doctors_shimmer_loading.dart';
import 'popular_doctor_list_view.dart';

class PopularDoctorsBlocBuilder extends StatelessWidget {
  const PopularDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorsCubit, DoctorsStates>(
      buildWhen: (previous, current) =>
      current is DoctorsLoading ||
          current is DoctorsSuccess ||
          current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsLoading: () {
            return setupLoading();
          },
            doctorsSuccess: (doctorsList) {
              return setupSuccess(doctorsList);
            },
            doctorsError: (errorHandler) => setupError(),
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }

  /// shimmer loading for Doctors
  Widget setupLoading() {
    return DoctorsShimmerLoading(width: 165.w, height: 260.h ,);
  }

  // display Specialist Doctors only
  Widget setupSuccess(doctorsList) {
    List<DoctorsData> specialistDoctors = [];
    for(DoctorsData doc in doctorsList) {
      if (doc.degree == "Specialist") {
        specialistDoctors.add(doc);
      }
    }
    return PopularDoctorListView(
      doctorsList: specialistDoctors
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}