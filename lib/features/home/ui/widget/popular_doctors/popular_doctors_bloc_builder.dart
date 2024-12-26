import 'package:doctor_hunt/core/extensions/context_extension.dart';
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
        return state.maybeWhen(doctorsLoading: () {
          return _setupLoading();
        }, doctorsSuccess: (doctorsList) {
          return _setupSuccess(doctorsList);
        }, doctorsError: (errorHandler) {
          _showErrorToast(context);
          return _setupError();
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }

  void _showErrorToast(BuildContext context) {
    context.showToast(
        text:
            "Oops! Something went wrong\tplease, check internet connection or login again!",
        state: ToastStates.WARNING);
  }

  /// shimmer loading for Doctors
  Widget _setupLoading() {
    return _buildShimmerLoading();
  }

  /// Reusable method to build shimmer loading widget
  DoctorsShimmerLoading _buildShimmerLoading() {
    return DoctorsShimmerLoading(
      width: 150.w,
      height: 200.h,
    );
  }

  // display Specialist Doctors only
  Widget _setupSuccess(doctorsList) {
    List<DoctorsData> specialistDoctors = [];
    for (DoctorsData doc in doctorsList) {
      if (doc.degree == "Specialist") {
        specialistDoctors.add(doc);
      }
    }
    return PopularDoctorListView(doctorsList: specialistDoctors);
  }

  Widget _setupError() {
    return DoctorsShimmerLoading(
      width: 150.w,
      height: 200.h,
    );
  }
}
