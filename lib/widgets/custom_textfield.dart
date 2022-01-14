import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _textFieldBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.0),
  borderSide: BorderSide(
    width: 0.7,
    color: Colors.grey.shade400,
  ),
);

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}
