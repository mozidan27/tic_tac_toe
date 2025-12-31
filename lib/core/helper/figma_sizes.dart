import 'package:flutter/material.dart';

class Figma {
  //!figma screen size to work on it
  static const double designWidth = 390;
  static const double designHeight = 844;
  //! width size
  static double w(BuildContext context, double value) {
    return MediaQuery.of(context).size.width * (value / designWidth);
  }

  //! hight size
  static double h(BuildContext context, double value) {
    return MediaQuery.of(context).size.height * (value / designHeight);
  }

  //! font size
  static double sp(BuildContext context, double value) {
    return MediaQuery.of(context).size.width * (value / designWidth);
  }
}

/*

!how to use the above class 

*Container(
* width: Figma.w(context, 200), //! 200 is the size in figma desgin , so when we use this class, the design will be responsive and no overfolw will happen
* height: Figma.h(context, 30),
* padding: EdgeInsets.symmetric(
*   horizontal: Figma.w(context, 12),
*   horizontal: Figma.w(context, 12),
*    vertical: Figma.h(context, 6),
* ),
* child: Text(
*   'Search',
*  style: TextStyle(
*    fontSize: Figma.sp(context, 14),
*  ),
*),
*)

*/
