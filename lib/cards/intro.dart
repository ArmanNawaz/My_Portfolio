import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyIntro extends StatelessWidget {
  const MyIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 370,
        width: size.width - 32,
        child: Card(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              fit: StackFit.passthrough,
              alignment: Alignment.center,
              children: [
                const Positioned(
                  right: 30,
                  child: SizedBox(
                    height: 250,
                    width: 250,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/ME-woBG.png'),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      DefaultTextStyle(
                        style: GoogleFonts.aclonica(
                            fontSize: size.width >= 900 ? 25 : 20),
                        child: Row(
                          children: [
                            AnimatedTextKit(
                              animatedTexts: [
                                WavyAnimatedText('Welcome to my Portfolio! ')
                              ],
                              isRepeatingAnimation: false,
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                ScaleAnimatedText('👋🏻'),
                              ],
                              isRepeatingAnimation: true,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      DefaultTextStyle(
                        style: GoogleFonts.akayaTelivigala(
                            fontSize: size.width >= 900 ? 60 : 40,
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              'Arman Nawaz',
                              speed: const Duration(milliseconds: 100),
                            ),
                          ],
                          totalRepeatCount: 2,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'My Skills include - ',
                        style: GoogleFonts.alegreyaSans(fontSize: 25),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DefaultTextStyle(
                        style: GoogleFonts.aBeeZee(fontSize: 20),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            RotateAnimatedText('Android Development',
                                textStyle: const TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold)),
                            RotateAnimatedText('Web Development',
                                textStyle: const TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold)),
                            RotateAnimatedText('Problem Solving',
                                textStyle: const TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold)),
                            RotateAnimatedText('Languages: C, C++, Python',
                                textStyle: const TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold)),
                          ],
                          isRepeatingAnimation: true,
                          repeatForever: true,
                        ),
                      ),
                    ],
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
