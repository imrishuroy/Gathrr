import 'package:flutter/material.dart';
import 'package:gathrr/constants/constants.dart';
import '/screens/dashboard/dashboard_screen.dart';

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
      home: const DashBoard(),
    );
  }
}
