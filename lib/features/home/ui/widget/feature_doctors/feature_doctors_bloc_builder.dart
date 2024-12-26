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
        return state.maybeWhen(doctorsLoading: () {
          return _setupLoading();
        }, doctorsSuccess: (doctorsList) {
          return _setupSuccess(doctorsList);
        }, doctorsError: (errorHandler) {
          _handleError(context);
          return _setupError();
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }

  /// Handles error state and shows a toast message.
  void _handleError(BuildContext context) {
    context.showToast(
        text:
            "Oops! Something went wrong\tplease, check internet connection or login again!",
        state: ToastStates.WARNING);
  }

  /// shimmer loading for Doctors
  Widget _setupLoading() {
    return DoctorsShimmerLoading(
      width: 100.w,
      height: 150.h,
    );
  }

  Widget _setupSuccess(doctorsList) {
    return FeatureDoctorListView(
      doctorsList: doctorsList ?? [],
    );
  }

  Widget _setupError() {
    //! TODO: Consider adding error widget
    return DoctorsShimmerLoading(
      width: 100.w,
      height: 150.h,
    );
  }

  //  Widget _setupError() {
  //   return Center(
  //     child: Text(
  //       "An error occurred. Please try again later.", //!Example: Improved error handling
  //     ),
  //   );
  // }
}
