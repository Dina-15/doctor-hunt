import 'package:doctor_hunt/core/di/dependency_injection.dart';
import 'package:doctor_hunt/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/constants.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'doc_hunt_app.dart';
import 'global_bloc_observer.dart';

Future<void> main() async {
  Bloc.observer = GlobalBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();
  setupGitIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(DocHuntApp(appRouter: AppRouter()));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (userToken == null || userToken == "") {
    isLoggedInUser = false;
  } else {
    isLoggedInUser = true;
  }
}
