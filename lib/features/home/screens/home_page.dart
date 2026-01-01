import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tic_tac_toe/core/functions/custom_toast.dart';
import 'package:tic_tac_toe/core/helper/figma_sizes.dart';
import 'package:tic_tac_toe/core/utils/app_colors.dart';
import 'package:tic_tac_toe/core/widgets/my_buttom_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _tapped(int index) {
    if (gameOver) return;

    setState(() {
      if (ohTurn && displayExOh[index] == '') {
        displayExOh[index] = 'O';
        filledBoxes++;
      } else if (!ohTurn && displayExOh[index] == '') {
        displayExOh[index] = 'X';
        filledBoxes++;
      }
      ohTurn = !ohTurn;
      _checkWinner();
    });
  }

  void _checkWinner() {
    List<List<int>> winPatterns = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var pattern in winPatterns) {
      String first = displayExOh[pattern[0]];
      if (first != '' &&
          first == displayExOh[pattern[1]] &&
          first == displayExOh[pattern[2]]) {
        _onWin(first);
        return;
      }
    }

    if (filledBoxes == 9) {
      _showDrawSnackBar();
    }
  }

  void _onWin(String win) {
    setState(() {
      gameOver = true;
      winner = win;
    });

    if (win == 'X') {
      exScore++;
    } else {
      ohScore++;
    }
    customToast(
      meg: "Winner is $win 🎉💃🏻💃🏻",
      backgroundColor: win == 'X' ? AppColors.lightBlue : AppColors.lightRed,
    );
  }

  void _showDrawSnackBar() {
    setState(() {
      gameOver = true;
      winner = null;
    });

    customToast(meg: 'Draw 🤝', backgroundColor: AppColors.darkestGrey);
  }

  void _clearBoard() {
    setState(() {
      displayExOh = List.filled(9, '');
      filledBoxes = 0;
    });
  }

  bool ohTurn = true;
  // List<String> displayExOh = ['', '', '', '', '', '', '', '', ''];
  List<String> displayExOh = List.filled(9, '');

  var myTextStyle = const TextStyle(color: Colors.white, fontSize: 30);

  // static var myNewFont = GoogleFonts.pressStart2p(
  //     textStyle: const TextStyle(color: Colors.black, letterSpacing: 3));
  static var myNewFontWhite = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: "Reboto",
    color: Colors.black,
    letterSpacing: 3,
    fontSize: 20,
  );

  int exScore = 0;
  int ohScore = 0;
  int filledBoxes = 0;
  bool gameOver = false;
  String? winner; // 'X' or 'O'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/x.svg",
                          width: Figma.w(context, 40),
                        ),
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
                        SvgPicture.asset(
                          "assets/o.svg",
                          width: Figma.w(context, 40),
                        ),
                        SizedBox(height: 10),

                        Text(ohScore.toString(), style: myNewFontWhite),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 24),
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: Figma.h(context, 15),
                  mainAxisSpacing: Figma.w(context, 15),
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  final value = displayExOh[index];
                  Color bgColor;
                  Color borderColor;
                  // ignore: unused_local_variable
                  Color textColor;
                  if (value == 'X') {
                    bgColor = const Color(0xffdaedff);
                    borderColor = AppColors.lightBlue;
                    textColor = AppColors.lightBlue;
                  } else if (value == 'O') {
                    bgColor = const Color(0xffffe6e5);
                    borderColor = AppColors.lightRed;
                    textColor = AppColors.lightRed;
                  } else {
                    bgColor = Colors.transparent;
                    borderColor = AppColors.lightGrey;
                    textColor = Colors.transparent;
                  }
                  return GestureDetector(
                    onTap: () => _tapped(index),
                    child: Container(
                      decoration: BoxDecoration(
                        color: bgColor,
                        border: Border.all(width: 2, color: borderColor),
                      ),
                      child: Center(
                        child: displayExOh[index] == ''
                            ? const SizedBox()
                            : SvgPicture.asset(
                                displayExOh[index] == 'X'
                                    ? 'assets/x.svg'
                                    : 'assets/o.svg',
                              ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: MyButtomWidget(
                text: gameOver ? "Rematch" : "Go Back",
                onTap: () {
                  if (gameOver) {
                    _clearBoard();
                    setState(() {
                      gameOver = false;
                      winner = null;
                      ohTurn = true;
                    });
                  } else {
                    Navigator.pop(context);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
