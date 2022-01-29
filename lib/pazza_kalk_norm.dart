import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_switch/sliding_switch.dart';

void main() {
  runApp(const MyApp());
}

@override

Widget build(BuildContext context) {

  return Scaffold();
}

// enum Sause { none, hot, sweet_and_sour, cheesy }


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // void _onSause(Sause? value) {
  //setState(() {
  //_sause = value;
  //});

  @override
  Widget build(BuildContext context) {

    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            actions: <Widget> [
              TextButton(
                onPressed: () {},
                child: const Text('Профиль'),
                style: buttonStyle,)]
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          width: double.infinity, // позволяет занять всю ширину строки по центру в строке ??
          child: Column(
              children: [
                const SizedBox(
                  width: 250,
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/pizza_pf.png'),),),

                const Text(
                  'Калькулятор пиццы',
                  style: TextStyle(fontSize: 30),
                ),

                const SizedBox(height: 9,),
                const Text(
                  'Выберете параметры:',
                  style: TextStyle(fontSize: 16),
                ),

                const SizedBox(height: 18,),

                SizedBox(
                    child: SlidingSwitch(
                      value: false,
                      width: 320,
                      onChanged: (bool value) {
                        print(value);
                      },
                      height: 40,
                      animationDuration: const Duration(milliseconds: 140),
                      onTap: () {},
                      onDoubleTap: () {},
                      onSwipe: () {},
                      textOff: "Обычное тесто",
                      textOn: "Тонкое тесто",
                      colorOn: const Color(0xffffffff),
                      colorOff: const Color(0xf0ffffff),
                      background: const Color(0xffECEFF1), // цвет фона кнопки
                      buttonColor: const Color(0xff4c89e5), // цвет кнопки
                      inactiveColor: const Color(0xff636f7b), // цвет неактивного текста
                      // ),
                    )),

                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: const Text('Размер: ')),

                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: const Text('Соус: ')),

                SizedBox(
                  width: 295,
                  height: 55,
                  child: Card(
                    elevation: 0,
                    color: const Color(0xffefeedf),
                    shape: RoundedRectangleBorder
                      (borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 48,
                            height: 48,
                            child: Image.asset('assets/cheese04.png'),
                          ),
                        ),

                        const Text(' Дополнительный сыр', ),
                        Switch(
                          value: false, onChanged: (bool value) {},
                        )

                      ],),
                  ),
                ),

                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: const Text('Стоимость: ')),

                const SizedBox(
                  width: 295,
                  height: 55,
                  child: Card(
                    elevation: 0,
                    child: (Text('здесь будет передаваться значение (стоимость пиццы)')),
                  ),
                ),

                const SizedBox(height: 20,),
                SizedBox(width: 154, height: 42, child:
                ElevatedButton(onPressed: () {}, child: const Text('Заказать'),
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36.0),)))),
              ]), // SizedBox(width: 232, height: 123, child:
        ),
      ),
    );
  }
}
