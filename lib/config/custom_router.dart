import 'package:flutter/material.dart';
import 'package:gathrr/screens/gps/gps_screen.dart';
import '/screens/dashboard/dashboard_screen.dart';
import '/screens/login/login_screen.dart';
import '/screens/sign-up/signup_screen.dart';

class CustomRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('Route: ${settings.name}');
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            settings: const RouteSettings(name: '/'),
            builder: (_) => const Scaffold());

      case LoginScreen.routeName:
        return LoginScreen.route();

      case SignUpScreen.routeName:
        return SignUpScreen.route();

      case DashBoard.routeName:
        return DashBoard.route();

      case GpsScreen.routeName:
        return GpsScreen.route();

      default:
        return ErrorRoute.route();
    }
  }
}

class ErrorRoute extends StatelessWidget {
  const ErrorRoute({Key? key}) : super(key: key);

  static const String routeNmae = '/error';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeNmae),
      builder: (_) => const ErrorRoute(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Something went wrong',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
