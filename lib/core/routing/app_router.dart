import 'package:flutter/material.dart';
import 'package:kid_teaching/core/routing/routes_provider.dart';
import 'package:kid_teaching/features/splash_screen/splash_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteProvider.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
