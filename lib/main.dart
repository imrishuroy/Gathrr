import 'package:flutter/material.dart';
import 'config/custom_router.dart';
import 'constants/constants.dart';
import '/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'NunitoSans',
        primaryColor: primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      //home: const LoginScreen(),
      onGenerateRoute: CustomRouter.onGenerateRoute,
      initialRoute: LoginScreen.routeName,
    );
  }
}
