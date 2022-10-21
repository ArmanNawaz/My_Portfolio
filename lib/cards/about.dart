import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String about = '''
I am a final year Computer Science student pursuing Bachelor of Technology from PSIT, Kanpur. 
I have good problem-solving skills and have solved 340+ questions on LeetCode with 4 monthly badges for daily problem-solving. I have got 6 stars for Problem Solving and 5 stars in Python on Hackerrank and have recently cleared TCS CodeVita with a rank of 355.
I learned flutter development from Angela Yu. I know C, C++, and Python.  
''';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "About",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Row(
              children: [
                createCoding(size.width),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20.0, right: 10),
                    child: Text(
                      about,
                      style: GoogleFonts.jaldi(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget createCoding(double width) {
  return width >= 900
      ? Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: 250.0,
              child: TextLiquidFill(
                text: 'Code \n< / >',
                waveColor: Colors.black,
                boxBackgroundColor: Colors.white,
                textStyle: GoogleFonts.alegreya(
                  fontSize: 80,
                ),
              ),
            ),
          ),
        )
      : const SizedBox(height: 0, width: 0);
}
