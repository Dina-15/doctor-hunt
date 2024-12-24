import 'package:doctor_hunt/core/extensions/context_extension.dart';
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
            doctorsError: (errorHandler) {
              context.showToast(text: "Oops! Something went wrong\tplease, check internet connection or login again!", state: ToastStates.WARNING);
              return setupError();
            },
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }

  /// shimmer loading for Doctors
  Widget setupLoading() {
    return DoctorsShimmerLoading(width: 100.w, height: 150.h,);
  }

  Widget setupSuccess(doctorsList) {
    return FeatureDoctorListView(
      doctorsList: doctorsList ?? [],
    );
  }

  Widget setupError() {
    return DoctorsShimmerLoading(width: 100.w, height: 150.h,);
  }
}