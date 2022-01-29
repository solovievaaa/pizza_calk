import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({Key? key}) : super(key: key);

  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();
  // для доступа к состоянию виджетов через ключ
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scaffoldMessengerKey: _messengerKey,
        home: Scaffold(
          appBar: AppBar(),
          drawer: Drawer(
              child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader( // заголовка тема ??
                        decoration: BoxDecoration(color: Colors.blue),
                        child: Container(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50.0))
                                ),
                                child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/220px-Google-flutter-logo.svg.png'),
                                // загрузка url изображения
                              ),
                              Text('Навигация во Flutter'),
                            ],
                          ),
                        )),

                    ListTile(
                      leading: const Icon(Icons.one_k),
                      title: Text('Каталог'),
                      onTap: () {
                        _messengerKey.currentState!.showSnackBar(SnackBar(content: Text('Переход в каталог')));
                      },//
                      //_messengerKey.currentState!.showSnackBar(
                      //SnackBar(
                      // content: Text('Переход в каталог'),
                    ),

                    ListTile(
                      leading: const Icon(Icons.two_k),
                      title: Text('Корзина'),
                      onTap: () {
                        _messengerKey.currentState!.showSnackBar(SnackBar(content: Text('Переход в Корзину')));
                      },//
                      //_messengerKey.currentState!.showSnackBar(
                      //SnackBar(
                      // content: Text('Переход в каталог'),
                    ),

                    Divider(),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: const Text('Профиль'),// разделительная полоса
                    ),

                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: Text('Настройки'),
                      onTap: () {
                        _messengerKey.currentState!.showSnackBar(SnackBar(content: Text('Переход в настройки')));
                      },//
                    ),
                  ]
              )
          ),

          body: Center(child: Text('Содержимое экрана')),
        )
    );
  }
}
