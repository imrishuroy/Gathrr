import 'package:flutter/material.dart';
import 'package:gathrr/screens/gps/gps_screen.dart';
import '/constants/constants.dart';
import '/screens/forgot-password/forgot_password_screen.dart';
import '/screens/sign-up/signup_screen.dart';
import 'package:google_fonts/google_fonts.dart';

final _textFieldBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.0),
  borderSide: BorderSide(
    width: 0.7,
    color: Colors.grey.shade400,
  ),
);

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const LoginScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _canvas = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 30.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30.0),
                Text(
                  'Gathrr',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 44.0,
                    color: primaryColor,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
                SizedBox(height: _canvas.height * 0.25),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: ' Email',
                    hintStyle: GoogleFonts.nunitoSans(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                    ),
                    prefixIcon: const Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: primaryColor.withOpacity(0.15),
                    border: _textFieldBorder,
                    enabledBorder: _textFieldBorder,
                    focusedBorder: _textFieldBorder,
                    disabledBorder: _textFieldBorder,
                  ),
                ),
                const SizedBox(height: 25.0),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: ' Password',
                    hintStyle: GoogleFonts.nunitoSans(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                    ),
                    prefixIcon: const Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: primaryColor.withOpacity(0.15),
                    border: _textFieldBorder,
                    enabledBorder: _textFieldBorder,
                    focusedBorder: _textFieldBorder,
                    disabledBorder: _textFieldBorder,
                  ),
                ),
                const SizedBox(height: 18.0),
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ForgotPassword(),
                    ),
                  ),
                  child: Text(
                    'Forgot Password ?',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                const SizedBox(height: 65.0),
                SizedBox(
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0))),
                    onPressed: () =>
                        Navigator.of(context).pushNamed(GpsScreen.routeName),
                    child: Text(
                      'Login',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ?',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16.0,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context)
                          .pushNamed(SignUpScreen.routeName),
                      child: const Text(
                        'SignUp',
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
        ),
      ),
    );
  }
}
