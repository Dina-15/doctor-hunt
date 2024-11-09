import 'package:doctor_hunt/core/extensions/context_extension.dart';
import 'package:doctor_hunt/core/networking/api_constants.dart';
import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/features/sign_up/logic/cubit/sign_up_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/cubit/sign_up_cubit.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpStates>(
      listener: (context, state) => state.whenOrNull(
        signUpLoading: () {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        },
        signUpSuccess: (response) {
          Navigator.pushNamed(context, Routes.navigationMainScaffold);
          context.showSnackBar(ApiConstants.successfulRegister);
          return null;
        },
        signUpFailure: (apiErrorModel) {
          context.showSnackBar(apiErrorModel.message ?? ApiConstants.unKnownErrorMessage);
          return null;
        },
      ),
      child: const SizedBox.shrink(),
    );
  }
}
