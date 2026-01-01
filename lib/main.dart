import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tic_tac_toe/features/welcome_screen/screens/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const TicTak());
}

class TicTak extends StatelessWidget {
  const TicTak({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
