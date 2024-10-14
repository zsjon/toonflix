import 'package:flutter/material.dart';

class Button extends StatelessWidget {  //StatelessWidget은 상태가 없는 위젯을 만들 때 사용함.
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({super.key, required this.text, required this.bgColor, required this.textColor});  //생성자를 통해 text, bgColor, textColor를 받아옴.


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(  //EdgeInsets.symmetric은 네 방향에 대해 다른 padding을 줄 수 있음.
          vertical: 15,
          horizontal: 40,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
