import 'package:flutter/material.dart';
import 'package:kalyanbazar/utils/routes/routes_names.dart';
import 'package:kalyanbazar/view/screen/home/activity_bid_history.dart';
import 'package:kalyanbazar/view/screen/home/activity_how_to_help.dart';
import 'package:kalyanbazar/view/screen/home/home_dashboard.dart';
import 'package:kalyanbazar/view/screen/login_screen.dart';
import 'package:kalyanbazar/view/screen/register_screen.dart';
import 'package:kalyanbazar/view/screen/splash_screen.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    print("screen ${settings.name}");
    switch (settings.name) {
      case (RouteNames.home):
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeDashBoard());
      case (RouteNames.login):
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());
      case (RouteNames.signupScreen):
        return MaterialPageRoute(
            builder: (BuildContext context) => const RegisterScreen());
      case (RouteNames.splashScreen):
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());
 case (RouteNames.howtohelp):
        return MaterialPageRoute(
            builder: (BuildContext context) => const ActivityHowToHelp());
 

      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const Scaffold(
            body: Center(
              child: Text("No route is configured"),
            ),
          ),
        );
    }
  }
}
