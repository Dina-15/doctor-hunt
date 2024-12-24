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
        return state.maybeWhen(
            specializationsLoading: () {
              return setupLoading();
            },
            specializationsSuccess: (specializationsList) {
              return setupSuccess(specializationsList);
            },
            specializationsError: (errorHandler) {
              context.showToast(text: "Oops! Something went wrong\tplease, check internet connection or login again!", state: ToastStates.WARNING);
              return setupError();
            },
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }

  /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return const SpecializationShimmerLoading();
  }

  Widget setupSuccess(specializationsList) {
    return SpecializationListView(
      specializationDataList: specializationsList ?? [],
    );
  }

  Widget setupError() {
    return const SpecializationShimmerLoading();
  }
}