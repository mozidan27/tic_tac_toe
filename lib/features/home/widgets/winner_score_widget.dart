import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tic_tac_toe/core/helper/figma_sizes.dart';

class WinnerScoreWidget extends StatelessWidget {
  const WinnerScoreWidget({
    super.key,
    required this.exScore,
    required this.myNewFontWhite,
    required this.ohScore,
  });

  final int exScore;
  final TextStyle myNewFontWhite;
  final int ohScore;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/x.svg", width: Figma.w(context, 40)),
                SizedBox(height: 10),
                Text(exScore.toString(), style: myNewFontWhite),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/o.svg", width: Figma.w(context, 40)),
                SizedBox(height: 10),

                Text(ohScore.toString(), style: myNewFontWhite),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
