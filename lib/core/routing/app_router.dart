import 'package:doctor_hunt/features/login/data/models/login_response.dart';

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
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUpScreen(),
          ),
        );
      case Routes.navigationMainScaffold:
        final userData = settings.arguments as LoginResponse?;
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    SpecializationCubit(getIt())..getSpecializations(),
              ),
              BlocProvider(
                create: (context) => DoctorsCubit(getIt())..getAllDoctors(),
              ),
            ],
            child: NavigationMainScaffold(userData: userData),
          ),
        );
      default:
        return null;
    }
  }
}
