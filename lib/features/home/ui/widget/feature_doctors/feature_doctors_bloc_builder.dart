import 'package:doctor_hunt/core/routing/routes_export.dart';
import 'package:doctor_hunt/features/home/logic/doctors_cubit/doctors_states.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../doctors_shimmer_loading.dart';
import 'feature_doctor_list_view.dart';

class FeatureDoctorsBlocBuilder extends StatelessWidget {
  const FeatureDoctorsBlocBuilder({super.key});

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
    return DoctorsShimmerLoading(width: 100.w, height: 190.h,);
  }

  Widget setupSuccess(doctorsList) {
    return FeatureDoctorListView(
      doctorsList: doctorsList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}