import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/routing/app_router.dart';
import 'package:kid_teaching/core/routing/routes_provider.dart';

class KidApp extends StatelessWidget {
  const KidApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Kid App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        initialRoute: RouteProvider.splashScreen,
        onGenerateRoute: appRouter.generateRoute,      ),
    );
  }
}
