import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/core/utils/app_colors.dart';
import 'package:tic_tac_toe/features/home/screens/home_page.dart';
import 'package:tic_tac_toe/core/widgets/my_buttom_widget.dart';
import 'package:tic_tac_toe/features/welcome_screen/widgets/top_section_widget.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            TopSectionWidget(),
            MyButtomWidget(
              text: 'New Game',
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
            ),
          ],
        ),
      ),
    );
  }
}
