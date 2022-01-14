import 'package:flutter/material.dart';
import 'package:gathrr/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color? color;
  final double? height;
  final double? width;

  const CustomButton({
    Key? key,
    required this.label,
    this.color,
    this.height = 70,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0))),
        onPressed: () {},
        child: Text(
          label,
          style: GoogleFonts.nunitoSans(
            fontSize: 17.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
