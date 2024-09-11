import 'package:flutter/material.dart';
import 'widgets/Button.dart';

const taxAmount = 15;
const priceAmount = 30;

var finalPrice = taxAmount + priceAmount;

class Player {
  String name;
  Player({required this.name});
}

void main() {
  var zsj = Player(name: "zsj");
  zsj.name;
  runApp(
    App(
    ));
} // main 함수는 앱의 Root 함수가 됨.

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 디자인 제작 시 Material(구글)과 Cupertino(iOS) 중 하나를 선택해야 함.
    debugShowCheckedModeBanner: false,
      home: Scaffold( // 화면의 뼈대를 구성하게 되는 Scaffold, 앱의 홈페이지에는 이 위젯이 뜨게 된다.
        // appBar: AppBar( // 앱 상단에 표시되는 위젯.
        //   centerTitle: true,
        //   elevation: 10,
        //   title: const Text('Hello flutter'), 
        // ),
        backgroundColor: const Color(0xFF181818), //색상 설정법: 0xFF + ~~~
        body: Padding(  //body에 줄 padding
          padding: const EdgeInsets.symmetric(horizontal: 40),  //EdgeInset 위젯을 이용하여 padding을 주게 됨.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
              width: 100,
            ),  // 화면에 일정한 크기의 공간을 만드는 위젯.
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // row와 column의 정렬 방향을 각각 Main과 Cross로 구분하여 사용. row의 mainaxisalignment는 horizontal, column은 vertical.
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Hey, Selena',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      )
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        color: Colors.white.
                        withOpacity(0.8),
                        fontSize: 18,
                      )
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 120,
            ),
            Text(
              'Total Balance',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white.
                withOpacity(0.8),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              '\$5 194 482',  //Dart에서 $는 변수 사용의 의미로 사용되므로, \$를 이용해서 $ 기호를 쓸 수 있다.
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                    text: 'Transfer',
                    bgColor: Color(0xFFF1B33B),
                    textColor: Colors.black,
                  ),
                  Button(
                    text: 'Request',
                    bgColor: Color(0xFF1F2123),
                    textColor: Colors.white,
                  ),
              ],
            )
          ],
        )  // 메인 페이지를 구성하는 위젯. child라는 위젯을 가운데로 오게 하는 Center 위젯.
        ),
      ),
    );
  }
}