import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final int order;

  final _blackColor = const Color(0xFF1F2123); //

  const CurrencyCard({
    super.key, //super는 부모 클래스의 생성자를 호출할 때 사용.
    required this.name, //required는 필수 매개변수를 의미.
    required this.code,
    required this.amount,
    required this.icon,
    required this.order,
  });
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * (order - 1)), //위젯의 위치를 조정하는 위젯. offset의 x, y 좌표를 이용하여 위치를 조정할 수 있음.
      child: Container(
        clipBehavior:
            Clip.hardEdge, //Clip.hardEdge는 컨테이너의 모서리를 둥글게 만들어주는 역할을 함.
        decoration: BoxDecoration(
          //decoration은 컨테이너의 배경색, 테두리, 그림자 등을 설정할 수 있음.
          color: order % 2 == 0  ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
              30), //EdgeInsets.all은 네 방향에 대해 동일한 padding을 줄 수 있음.
          child: Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, //mainAxisAlignment는 row와 column의 정렬 방향을 각각 Main과 Cross로 구분하여 사용. row의 mainaxisalignment는 horizontal, column은 vertical.
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: order % 2 == 0 ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: order % 2 == 0 ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: order % 2 == 0 ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                //위젯의 크기를 조정하는 위젯. scale을 이용하여 크기를 조정할 수 있음.
                scale: 2.2, //2.2배로 확대.
                child: Transform.translate(
                  //아이콘의 위치를 조정하는 위젯. offset의 x, y 좌표를 이용하여 위치를 조정할 수 있음.
                  offset: const Offset(
                      -5, 12), //x로 -5, y로 12만큼 이동(spacebetween 기준).
                  child: Icon(
                    icon, //transform의 대상이 되는 위젯.
                    color: order % 2 == 0 ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
