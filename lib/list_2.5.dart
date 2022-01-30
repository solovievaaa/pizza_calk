import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyList1 extends StatelessWidget {
  const MyList1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyListBuilder(),
      ),
    );
  }
}

class MyList2 extends StatelessWidget {
   const MyList2({Key? key, required this.numberList2}) : super(key: key);

  final int numberList2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.purple,
          border: Border.all() ),
      child:
      Text('Элемент списка MyList2 # $numberList2',
        style: Theme.of(context).textTheme.bodyText1,),
    );
  }
}

class MyListBuilder extends StatelessWidget {
  const MyListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 20,
        itemBuilder: (BuildContext context, int indexList2) {
          return MyList2(numberList2: indexList2);
        }
    );
  }
}

class MyList3 extends StatefulWidget {
   MyList3({Key? key}) : super(key: key);

  @override
  _MyList3State createState() => _MyList3State();
}

class _MyList3State extends State<MyList3> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget> [
        ListTile(
            leading: Icon(Icons.add),
            title: Text('Добавить'),),
        ListTile(
          leading: Icon(Icons.access_time),
          title: Text('Время'),),
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text('Будильник'),),
        ],
    );
  }
}

class MyList3StatefulWidget extends StatefulWidget {
   MyList3StatefulWidget({Key? key}) : super(key: key);
// MyList3StatefulWidget имя класса в body, чтоюы работало норм)
  @override
  _MyList3StatefulWidgetState createState() => _MyList3StatefulWidgetState();
}

class _MyList3StatefulWidgetState extends State<MyList3StatefulWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            //leading: Icon(Icons.add),
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





