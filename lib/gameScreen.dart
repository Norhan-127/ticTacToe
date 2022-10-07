import 'package:flutter/material.dart';
import 'package:xo_game/argsNavigation.dart';
import 'package:xo_game/gameButtons.dart';
import 'package:xo_game/homeScreen.dart';

class GameScreen extends StatefulWidget {
  static const String routeName = 'game_screen';

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int playerXscore = 0;
  int playerOscore = 0;
  List<String> boardState = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    //inside build function receive the args
    final Args argument = ModalRoute.of(context)?.settings.arguments as Args;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.19,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: const [
                      BoxShadow(
                          //offset: Offset(0, 4),
                          color: Colors.grey, //edited
                          spreadRadius: 4,
                          blurRadius: 70 //edited
                          )
                    ],
                  ),
                  child: Center(
                      child: Text(
                    '$playerXscore',
                    style: Theme.of(context).textTheme.headline1,
                  )),
                ),
                Row(
                  children:  [
                    const Text(
                      'X',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        color: Colors.yellow,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      argument.player1name,
                      style: const TextStyle(
                          color: Color(0xff002c3e),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.77,
              height: MediaQuery.of(context).size.height * 0.56,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      //offset: Offset(0, 4),
                      color: Color(0x0fc1bfbf), //edited
                      spreadRadius: 1,
                      blurRadius: 50 //edited
                      )
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Button(boardState[0], 0, onButtonClick),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                          color: Colors.grey,width:2,height: 20,),
                        Button(boardState[1], 1, onButtonClick),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                          color: Colors.grey,width:2,height: 20,),
                        Button(boardState[2], 2, onButtonClick),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 20.0,
                    endIndent: 10.0,
                    thickness: 2,
                    color: Colors.grey,
                  ),
                  // const SizedBox(width: 5,height: 5,),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Button(boardState[3], 3, onButtonClick),
                        Container(
                         // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          color: Colors.grey,width:2,height: 30,),
                        Button(boardState[4], 4, onButtonClick),
                        Container(
                          // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          color: Colors.grey,width:2,height: 30,),
                        Button(boardState[5], 5, onButtonClick)
                      ],
                    ),
                  ),

                  const Divider(
                  indent: 20.0,
                  endIndent: 10.0,
                  thickness: 2,
                  color: Colors.grey,
                    ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Button(boardState[6], 6, onButtonClick),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                          color: Colors.grey,width:2,height: 30,),
                        Button(boardState[7], 7, onButtonClick),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                          color: Colors.grey,width:2,height: 30,),
                        Button(boardState[8], 8, onButtonClick)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Text(
                      'O',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffF54C4C),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      argument.player2name,
                      style: const TextStyle(
                          color: Color(0xff002c3e),
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.19,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: const [
                      BoxShadow(
                          //offset: Offset(0, 4),
                          color: Colors.grey, //edited
                          spreadRadius: 4,
                          blurRadius: 70 //edited
                          )
                    ],
                  ),
                  child: Center(
                      child: Text(
                    '$playerOscore',
                    style: Theme.of(context).textTheme.headline1,
                  )),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, HomeScreen.routeName);
                  },
                  icon: const Icon(Icons.home),
                  iconSize: 40,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  int counter = 0;

  void onButtonClick(int index) {
    if (boardState[index].isNotEmpty) return;
    counter % 2 == 0 ? boardState[index] = 'X' : boardState[index] = 'O';
    counter++;
    if (checkWinner('X')) {
      playerXscore++;
      initBoard();
    } else if (checkWinner('O')) {
      playerOscore++;
      initBoard();
    } else if (counter == 9) {
      initBoard();
    }
    setState(() {});
  }

  void initBoard() {
    boardState = [
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    ];
    counter = 0;
  }

  bool checkWinner(String symbol) {
    for (int i = 0; i < 9; i += 3) {
      //0,3,6 rows
      if (boardState[i] == symbol &&
          boardState[i + 1] == symbol &&
          boardState[i + 2] == symbol) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      //0,column
      if (boardState[i] == symbol &&
          boardState[i + 3] == symbol &&
          boardState[i + 6] == symbol) {
        return true;
      }
    }
    if (boardState[0] == symbol &&
        boardState[4] == symbol &&
        boardState[4] == symbol) {
      return true;
    }
    if (boardState[2] == symbol &&
        boardState[4] == symbol &&
        boardState[6] == symbol) {
      return true;
    }
    return false;
  }
}
