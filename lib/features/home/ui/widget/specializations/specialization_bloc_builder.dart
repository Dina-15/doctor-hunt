import 'package:doctor_hunt/core/extensions/context_extension.dart';
import 'package:doctor_hunt/features/home/logic/specialization_cubit/specialization_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/specialization_cubit/specialization_cubit.dart';
import 'specialization_shimmer_loading.dart';
import 'specialization_list_view.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecializationCubit, SpecializationStates>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(specializationsLoading: () {
          return _setupLoading();
        }, specializationsSuccess: (specializationsList) {
          return _setupSuccess(specializationsList);
        }, specializationsError: (errorHandler) {
          _showErrorToast(context);
          return _setupError();
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }
  /// Shows a toast message for errors
  void _showErrorToast(BuildContext context) {
    context.showToast(
        text:
            "Oops! Something went wrong\tplease, check internet connection or login again!",
        state: ToastStates.WARNING);
  }

  /// shimmer loading for specializations and doctors
  Widget _setupLoading() {
    return const SpecializationShimmerLoading();
  }

  Widget _setupSuccess(specializationsList) {
    return SpecializationListView(
      specializationDataList: specializationsList ?? [],
    );
  }

  Widget _setupError() {
    return const SpecializationShimmerLoading();
  }
}
