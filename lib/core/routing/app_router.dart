import 'package:cofee_shop/core/routing/routes.dart';
import 'package:cofee_shop/features/auth/presentation/view/login_view.dart';
import 'package:cofee_shop/onboard.dart';
import 'package:cofee_shop/splash.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (context) => Onboard());
      case Routes.loginView:
        return MaterialPageRoute(builder: (context) => LoginView());
         case Routes.splash:
        return MaterialPageRoute(builder: (context) => Splash()
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
