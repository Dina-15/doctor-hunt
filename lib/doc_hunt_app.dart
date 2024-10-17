import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/routing/app_router.dart';

class DocHuntApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocHuntApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'Doc Hunt App',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.transparent,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generateRoute,
        ),
    );
  }
}
