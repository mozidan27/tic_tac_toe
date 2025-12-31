import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/core/helper/figma_sizes.dart';
import 'package:tic_tac_toe/core/utils/app_colors.dart';
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
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/Logo.png',
                    width: Figma.w(context, 122.9),
                    height: Figma.h(context, 137.03),
                  ),
                  SizedBox(height: Figma.h(context, 71)),
                  Text(
                    "Welcome",

                    style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Reboto Med",
                      fontSize: Figma.sp(context, 24),
                    ),
                  ),
                  SizedBox(height: Figma.h(context, 6)),
                  Text(
                    "Let's Play A Game",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontFamily: "Reboto",
                      fontSize: Figma.sp(context, 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: Figma.w(context, 27),
              right: Figma.w(context, 27),
              bottom: Figma.h(context, 24),
            ),
            child: GestureDetector(
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
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: AppColors.lightGrey),
                ),
                height: Figma.h(context, 54),
                width: Figma.h(context, 342),
                child: Center(
                  child: Text(
                    "New Game",
                    style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Reboto",
                      fontSize: Figma.sp(context, 14),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
