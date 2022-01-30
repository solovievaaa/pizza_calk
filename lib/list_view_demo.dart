import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SimpleList(), // MyStatefullWidget(),
      ),
    );
  }
}

class MyListItem extends StatelessWidget { // виджет без состояния, возвращает контейнер
  const MyListItem({Key? key, required this.number}) : super(key: key);

  // final String text;
  final int number; // required this.number - параметр (номер заданного элемента), возможно после оъявления переменной number

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        border: Border.all()
      ),
      child: Text('Элемент # $number', style: Theme.of(context).textTheme.headline6,),
    );
  }
}


class SimpleList extends StatelessWidget {
  const SimpleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical, // задали вертикальный список, можно сделать горизонтально еще
        children: [
       MyListItem(number: 1), // Text('может быть задан и просто текст')
        MyListItem(number: 2),
        MyListItem(number: 3),
        MyListItem(number: 4),
        MyListItem(number: 5),
        MyListItem(number: 6),
        MyListItem(number: 7),
        MyListItem(number: 8),
        MyListItem(number: 9),
        MyListItem(number: 10),
        MyListItem(number: 11),
        MyListItem(number: 12),
       ],
     /* children: const <Widget>[
        ListTile(
          leading: Icon(Icons.map), // как раз два элемента в строке списка
          title: Text('Map'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Album'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
        ),
      ],

      */
    );
  }
}



class SimpleListBuilder extends StatelessWidget {
  SimpleListBuilder({Key? key}) : super(key: key);

//  var list = List<int>.generate(50, (i) => i + 1); // список (List) целочисленных элементов (<int>) индекс/генерируемых функцией значений (.generate(50, (i) => i + 1) - 50 элементов
// когда используем itemBuilder, создавать список необязательно, тк итерирование индекса происходит автоматически
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return MyListItem(number: index);
        }
    );
  }
}

class SimpleListSeparated extends StatelessWidget {
  SimpleListSeparated({Key? key}) : super(key: key);

  var list = new List<int>.generate(50, (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(8),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return MyListItem(number: index);
      },
      separatorBuilder: (BuildContext context, int index) => Divider(thickness: 3,),
    );
  }
}

 /* class MyStatefullWidget extends StatefulWidget {
  const MyStatefullWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefullWidget> createState() => _MyStatefullWidgetState();
}

class _MyStatefullWidgetState extends State<MyStatefullWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile( // можно добавить текст и значок
            title: Text('Item $index'),
            selected: index == _selectedIndex, // определить, является ли элемент выбранным
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
          );
        }
    );
  }
}
*/

/* если в SimpleListBuilder не задан параметр itemCount, список элементов будет бесконечным
индексация начинается с 0, т.е. от 0 до 19, если 20 элементов

в SimpleListSeparated - после каждого элемента идет разделитель, виджет раздилителя можно выбрать самостоятельно, хоть рекламный баннер
* */