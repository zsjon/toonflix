import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toonflix/widgets/currency_card.dart';
import 'widgets/Button.dart';

const taxAmount = 15; // const는 상수를 선언할 때 사용함. 변수 선언 시 타입을 명시하지 않아도 됨.
const priceAmount = 30;

var finalPrice =
    taxAmount + priceAmount; // 변수 선언 시 var를 사용하면 자동으로 타입을 추론하여 선언함.

class Player {
  String name;
  Player({required this.name}); // 생성자를 통해 name을 받아옴.
}

void main() {
  var zsj = Player(name: "zsj");
  zsj.name;
  runApp(App());
} // main 함수는 앱의 Root 함수가 됨.

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // build 함수는 화면을 구성하는 함수.
    return MaterialApp(
      // 디자인 제작 시 Material(구글)과 Cupertino(iOS) 중 하나를 선택해야 함.
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        // 화면의 뼈대를 구성하게 되는 Scaffold, 앱의 홈페이지에는 이 위젯이 뜨게 된다.
        // appBar: AppBar( // 앱 상단에 표시되는 위젯.
        //   centerTitle: true,
        //   elevation: 10,
        //   title: const Text('Hello flutter'),
        // ),
        backgroundColor: const Color(0xFF181818), //색상 설정법: 0xFF + ~~~
        body: SingleChildScrollView(
          //body에 줄 padding 대신, SingleChildScrollView를 사용하여 화면이 넘칠 때 스크롤이 가능하게 함.
          padding: const EdgeInsets.symmetric(
              horizontal: 40), //EdgeInset 위젯을 이용하여 padding을 주게 됨.
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // column의 정렬 방향을 vertical로 설정.
            children: [
              const SizedBox(
                height: 80,
                width: 100,
              ), // 화면에 일정한 크기의 공간을 만드는 위젯.
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .end, // row와 column의 정렬 방향을 각각 Main과 Cross로 구분하여 사용. row의 mainaxisalignment는 horizontal, column은 vertical.
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('Hey, Selena',
                          style: TextStyle(
                            //TextStyle을 이용하여 글자의 스타일을 설정할 수 있음.
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800, // 글자의 굵기를 설정할 수 있음.
                          )),
                      Text('Welcome Back',
                          style: TextStyle(
                            color: Colors.white
                                .withOpacity(0.8), //색상의 투명도를 설정할 수 있음.
                            fontSize: 18,
                          )),
                    ],
                  )
                ],
              ),
              const SizedBox(
                // SizedBox를 이용하여 일정한 크기의 공간을 만들 수 있음.
                height: 50,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '\$5 194 482', //Dart에서 $는 변수 사용의 의미로 사용되므로, \$를 이용해서 $ 기호를 쓸 수 있다.
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
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // row의 정렬 방향을 horizontal로 설정.
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
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CurrencyCard(
                // CurrencyCard 위젯을 이용하여 화폐 정보를 표시할 수 있음.
                name: 'Euro', // CurrencyCard 위젯에는 name, code, amount, icon, isInverted라는 변수를 받아옴.
                code: 'EUR',
                amount: '6 428',
                icon: Icons.euro_rounded, // 아이콘은 Material Design Icons를 사용할 수 있음.
                order: 1,
              ),
              Transform.translate(
                offset: const Offset(0, -20), //위젯의 위치를 조정하는 위젯. offset의 x, y 좌표를 이용하여 위치를 조정할 수 있음.
                child: const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin,
                  order: 2,
                ),
              ),
              Transform.translate(
                //위젯의 위치를 조정하는 위젯. offset의 x, y 좌표를 이용하여 위치를 조정할 수 있음.
                offset: const Offset(0, -40),
                child: (const CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '428',
                  icon: Icons.attach_money_outlined,
                  order: 3,
                )),
              ),
            ],
          ), // 메인 페이지를 구성하는 위젯. child라는 위젯을 가운데로 오게 하는 Center 위젯.
        ),
      ),
    );
  }
}
