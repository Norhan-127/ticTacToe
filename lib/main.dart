import 'package:flutter/material.dart';
import 'package:xo_game/gameScreen.dart';
import 'package:xo_game/homeScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        GameScreen.routeName: (context) => GameScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color(0xff002c3e),
          )
        )
      ),
    );
  }
}
