import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: strict_top_level_inference
customToast({required String meg, Color? backgroundColor}) {
  Fluttertoast.showToast(
    msg: meg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: backgroundColor,
    textColor: Colors.white,
    fontSize: 24.0,
  );
}
