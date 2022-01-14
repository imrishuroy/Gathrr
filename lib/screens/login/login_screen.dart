import 'package:flutter/material.dart';
import 'package:gathrr/constants/constants.dart';
import 'package:gathrr/screens/forgot-password/forgot_password_screen.dart';
import 'package:google_fonts/google_fonts.dart';

final _textFieldBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.0),
  borderSide: BorderSide(
    width: 0.7,
    color: Colors.grey.shade400,
  ),
);

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
