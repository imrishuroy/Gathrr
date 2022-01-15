import 'package:flutter/material.dart';
import 'package:gathrr/screens/gps/gps_screen.dart';
import '/constants/constants.dart';

import '/widgets/custom_button.dart';
import '/widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  static const String routeName = '/signup';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => SignUpScreen(),
    );
  }

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 70.0),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 70.0,
                    backgroundColor: Colors.grey.shade400,
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 68.0,
                      child: Icon(
                        Icons.person,
                        color: primaryColor,
                        size: 50.0,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 100.0,
                    child: CircleAvatar(
                      backgroundColor: primaryColor,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_upward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            CustomTextField(
              textController: _nameController,
              hintText: 'Name',
              prefixIcon: Icons.person,
              fillColor: primaryColor.withOpacity(0.15),
              hintTextColor: primaryColor,
            ),
            const SizedBox(height: 25.0),
            CustomTextField(
              textController: _emailController,
              hintText: 'Email',
              prefixIcon: Icons.mail,
              fillColor: primaryColor.withOpacity(0.15),
              hintTextColor: primaryColor,
            ),
            const SizedBox(height: 25.0),
            CustomTextField(
              textController: _passwordController,
              hintText: 'Password',
              prefixIcon: Icons.lock,
              fillColor: primaryColor.withOpacity(0.15),
              hintTextColor: primaryColor,
            ),
            const SizedBox(height: 25.0),
            CustomTextField(
              textController: _confirmPasswordController,
              hintText: 'Confirm Passowrd',
              prefixIcon: Icons.lock,
              fillColor: primaryColor.withOpacity(0.15),
              hintTextColor: primaryColor,
            ),
            const SizedBox(height: 50.0),
            CustomButton(
              label: 'Register',
              onPressed: () =>
                  Navigator.of(context).pushNamed(GpsScreen.routeName),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account ?',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16.0,
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
