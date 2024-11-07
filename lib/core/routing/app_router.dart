import 'package:doctor_hunt/core/di/dependency_injection.dart';
import 'package:doctor_hunt/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_hunt/features/login/logic/cubit/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routes_export.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case Routes.navigationMainScaffold:
        return MaterialPageRoute(
          builder: (_) => const NavigationMainScaffold(),
        );
      default:
        return null;
    }
  }
}
