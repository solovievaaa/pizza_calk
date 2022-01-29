import 'package:flutter/material.dart';

class ExtendedDemoScreen extends StatelessWidget {
  const ExtendedDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 300), // обернули столбец в контейнер и тогда можем задать отступы через padding
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1, // часть от экрана какая будет занята в долях
                    child: Container(
                      height: 100,
                      color: Colors.red,
                    ),),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.green,
                    ),),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_box_rounded),
                      ),
                    ),),
                  Expanded(child: ElevatedButton(onPressed: () {}, child: Text("Регистрация"))),
                ],
              )
            ],
          ),
        ),

      ),
    );
  }
}