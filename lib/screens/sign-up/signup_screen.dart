import 'package:flutter/material.dart';
import 'package:gathrr/constants/constants.dart';
import 'package:gathrr/widgets/custom_button.dart';
import 'package:gathrr/widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
            const CustomTextField(
              hintText: 'Name',
              prefixIcon: Icons.person,
              fillColor: primaryColor,
              hintTextColor: primaryColor,
            ),
            const SizedBox(height: 25.0),
            const CustomTextField(
              hintText: 'Email',
              prefixIcon: Icons.mail,
              fillColor: primaryColor,
              hintTextColor: primaryColor,
            ),
            const SizedBox(height: 25.0),
            const CustomTextField(
              hintText: 'Password',
              prefixIcon: Icons.lock,
              fillColor: primaryColor,
              hintTextColor: primaryColor,
            ),
            const SizedBox(height: 25.0),
            const CustomTextField(
              hintText: 'Confirm Passowrd',
              prefixIcon: Icons.lock,
              fillColor: primaryColor,
              hintTextColor: primaryColor,
            ),
            const SizedBox(height: 50.0),
            const CustomButton(label: 'Register'),
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
                  onPressed: () {},
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
