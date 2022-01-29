import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {


  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Демо AppBar'),
            actions: <Widget> [ // раз [] - значит массив, перечисление объектов через запятую
              IconButton(
                tooltip: 'баланс', // всплывающая подсказка
                  onPressed: () {},
                  icon: const Icon(Icons.add)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.announcement)),
            TextButton(
              onPressed: () {},
              child: const Text('Профиль'),
              style: buttonStyle,)
            ],
          ),
          body: const Center(child: Text('Контент')),
        )
    );
  }
}
