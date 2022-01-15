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
  final String hintText;
  final IconData prefixIcon;
  final Color? fillColor;
  final Color? hintTextColor;
  final TextEditingController textController;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    required this.fillColor,
    this.hintTextColor = Colors.white,
    required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.nunitoSans(
          color: hintTextColor,
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.white,
        ),
        filled: true,
        // fillColor: Colors.white.withOpacity(0.4),
        fillColor: fillColor,
        border: _textFieldBorder,
        enabledBorder: _textFieldBorder,
        focusedBorder: _textFieldBorder,
        disabledBorder: _textFieldBorder,
      ),
    );
  }
}
