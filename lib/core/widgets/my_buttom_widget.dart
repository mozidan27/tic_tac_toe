import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/helper/figma_sizes.dart';
import 'package:tic_tac_toe/core/utils/app_colors.dart';

class MyButtomWidget extends StatelessWidget {
  const MyButtomWidget({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Figma.w(context, 24),
        right: Figma.w(context, 24),
        bottom: Figma.h(context, 24),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColors.lightGrey),
          ),
          height: Figma.h(context, 54),
          width: Figma.h(context, 342),
          child: Center(
            child: Text(
              text,
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
