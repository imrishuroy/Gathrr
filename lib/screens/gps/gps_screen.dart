import 'package:flutter/material.dart';
import 'package:gathrr/screens/dashboard/dashboard_screen.dart';
import '/constants/constants.dart';
import '/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class GpsScreen extends StatelessWidget {
  static const String routeName = '/gps-screen';
  const GpsScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const GpsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _canvas = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: _canvas.height * 0.3),
            Text(
              'Hi Jeet\nWelcome to\nGathrr!',
              style: GoogleFonts.nunitoSans(
                color: primaryColor,
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: _canvas.height * 0.09),
            Text(
              'Please turn on your GPS to find out better events suggestions near you',
              style: GoogleFonts.nunitoSans(
                fontSize: 18.0,
                color: primaryColor,
              ),
            ),
            SizedBox(height: _canvas.height * 0.2),
            CustomButton(
              label: 'Turn on GPS',
              onPressed: () =>
                  Navigator.of(context).pushNamed(DashBoard.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
