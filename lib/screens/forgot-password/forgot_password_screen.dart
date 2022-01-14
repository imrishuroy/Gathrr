import 'package:flutter/material.dart';
import 'package:gathrr/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

final _textFieldBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.0),
  borderSide: BorderSide(
    width: 0.7,
    color: Colors.grey.shade400,
  ),
);

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              //stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                primaryColor,
                primaryColor,
                Colors.deepPurple,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 70.0),
                Text(
                  'Enter your email and will send you instructions on how to reset it ',
                  style: GoogleFonts.nunitoSans(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30.0),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: ' Email',
                    hintStyle: GoogleFonts.nunitoSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                    ),
                    prefixIcon: const Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.4),
                    border: _textFieldBorder,
                    enabledBorder: _textFieldBorder,
                    focusedBorder: _textFieldBorder,
                    disabledBorder: _textFieldBorder,
                  ),
                ),
                const SizedBox(height: 100.0),
                SizedBox(
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0))),
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
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
