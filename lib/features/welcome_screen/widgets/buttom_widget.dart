import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/helper/figma_sizes.dart';
import 'package:tic_tac_toe/core/utils/app_colors.dart';
import 'package:tic_tac_toe/screens/home_page.dart';

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
