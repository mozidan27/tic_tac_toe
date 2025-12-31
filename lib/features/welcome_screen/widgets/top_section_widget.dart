import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/helper/figma_sizes.dart';
import 'package:tic_tac_toe/core/utils/app_colors.dart';

class TopSectionWidget extends StatelessWidget {
  const TopSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
