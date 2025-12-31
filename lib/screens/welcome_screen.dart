import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/screens/home_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static var myNewFontWhite = GoogleFonts.pressStart2p(
    textStyle: const TextStyle(
      color: Colors.white,
      letterSpacing: 3,
      fontSize: 30,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Text('TIC TAC TOE', style: myNewFontWhite),
            ),
            const SizedBox(height: 110),
            Image.asset('assets/Logo.png'),
            const SizedBox(height: 70),
            Text(
              '@MOHAMED_ZIDANNN',
              style: GoogleFonts.pressStart2p(
                textStyle: const TextStyle(
                  color: Colors.white,
                  letterSpacing: 3,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 80),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                height: 100,
                width: 370,
                child: Center(
                  child: Text(
                    'PLAY GAME',
                    style: GoogleFonts.pressStart2p(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        letterSpacing: 3,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
