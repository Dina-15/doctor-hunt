import 'package:doctor_hunt/core/di/dependency_injection.dart';
import 'package:doctor_hunt/core/helpers/shared_pref_helper.dart';
import 'package:doctor_hunt/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/constants.dart';
import 'core/helpers/secure_storage_helper.dart';
import 'doc_hunt_app.dart';
import 'global_bloc_observer.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  Bloc.observer = GlobalBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupGitIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  onBoarding = await SharedPrefHelper.getBool(SharedPrefKeys.onBoarding);
  runApp(DocHuntApp(appRouter: AppRouter()));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SecureStorageHelper.getSecuredString(SharedPrefKeys.userToken);
  if (userToken != null && userToken.isNotEmpty) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
