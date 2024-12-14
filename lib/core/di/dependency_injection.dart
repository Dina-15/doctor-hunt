import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/networking/api_service.dart';
import 'package:doctor_hunt/core/networking/dio_config.dart';
import 'package:doctor_hunt/features/login/data/repo/login_repo.dart';
import 'package:doctor_hunt/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_hunt/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:doctor_hunt/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doctor_hunt/features/home/data/apis/home_api_service.dart';
import 'package:doctor_hunt/features/home/data/repo/home_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGitIt() async {
  // Dio & ApiService
  Dio dio = DioConfig.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // sign up
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}