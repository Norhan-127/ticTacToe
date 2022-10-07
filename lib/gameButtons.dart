import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  // Color textColor;
  String text;
  int index;
  Function onButtonClickCallBack;
  Button(this.text,this.index,this.onButtonClickCallBack ,{Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
          style:ElevatedButton.styleFrom(
            primary: Colors.white,
            elevation: 0,
          ),
          onPressed: () {
            onButtonClickCallBack(index);
          },
          child: Text(text,
            style: TextStyle(
              color: text=='O'?const Color(0xffF54C4C):Colors.yellow,
                fontSize: 45,
                fontWeight: FontWeight.bold
            )
          ),
        )
    );
  }
}

