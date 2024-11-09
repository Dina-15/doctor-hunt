import 'package:doctor_hunt/core/extensions/context_extension.dart';
import 'package:doctor_hunt/core/networking/api_constants.dart';
import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_hunt/features/login/logic/cubit/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginStates>(
      listener: (context, state) => state.whenOrNull(
        loginLoading: () {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        },
        loginSuccess: (loginResponse) {
          Navigator.pushNamed(context, Routes.navigationMainScaffold);
          context.showSnackBar(ApiConstants.successfulLogin);
          return null;
        },
        loginFailure: (apiErrorModel) {
          context.showSnackBar(apiErrorModel.message ?? ApiConstants.unKnownErrorMessage);
          return null;
        },
      ),
      child: const SizedBox.shrink(),
    );
  }
}
