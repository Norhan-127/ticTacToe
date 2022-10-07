import 'package:flutter/material.dart';
import 'package:xo_game/argsNavigation.dart';
import 'package:xo_game/gameScreen.dart';

class HomeScreen extends StatefulWidget {

  static const String routeName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String firstPlayer='';

  String secondPlayer='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const Text(
              'Pic Your Side',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff002c3e)),
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children:  const [
                    Text(
                      'X',
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w500,
                        color: Colors.yellow,
                      ),
                    ),
                    Text(
                      'First Player',
                      style: TextStyle(
                          color: Color(0xff002c3e),
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'O',
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffF54C4C),
                      ),
                    ),
                    Text(
                      'Second Player',
                      style: TextStyle(
                          color: Color(0xff002c3e),
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:  [
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Name',
                      labelText: 'First Player',
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff002c3e),
                      ),
                    ),
                    onChanged: (value){
                      firstPlayer=value;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   TextField(
                    decoration:const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Name',
                      labelText: 'Second Player',
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff002c3e),
                      ),
                    ),
                    onChanged: (value){
                      secondPlayer=value;
                    },
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, GameScreen.routeName,arguments:
                  //object from data class
                  Args(player1name: firstPlayer,player2name: secondPlayer)
                );
              },
              child: const Text(
                'Continue',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                primary: const Color(0xff002c3e),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  //border radius equal to or more than 50% of width
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
