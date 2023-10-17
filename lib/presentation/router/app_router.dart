import 'package:e_learning_app/presentation/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';


class RoutesManager {
  static const String splashRoute = '/splash';
}

class RoutesGenerator {

  static Route<dynamic> getRoutes (RouteSettings settings)
  {
    switch (settings.name)
    {
      case RoutesManager.splashRoute :
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default :
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute (){
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(
        title: const Text(
          "undefinedRoute",
        ),
      ),
      body: const Center(
        child: Text(
          "undefinedRoute",
        ),
      ),
    ));

  }

}