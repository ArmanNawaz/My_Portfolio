import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '< ',
          style: GoogleFonts.pinyonScript(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        Text('Arman',
            style: GoogleFonts.pinyonScript(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w700)),
        Text(' />',
            style: GoogleFonts.pinyonScript(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700))
      ],
    );
  }
}
