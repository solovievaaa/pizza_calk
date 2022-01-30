import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza_calk/global_theme.dart';
import 'strings.dart';

class ThemesDemoApp extends StatelessWidget {
  const ThemesDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme(),
      home: const ThemesDemoScreen(),
    );
  }
}

class ThemesDemoScreen extends StatefulWidget {
  const ThemesDemoScreen({Key? key}) : super(key: key);

  @override
  _ThemesDemoScreenState createState() => _ThemesDemoScreenState();
}

class _ThemesDemoScreenState extends State<ThemesDemoScreen> {
  double _currentSliderValue = 20;
  bool _isDarkTheme = false;
  
  Widget _NavigationDraw() => Drawer( // эта функция возвращает виджет и формирует dr
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.blue,
    ),
          child: Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    borderRadius: 
                      BorderRadius.all(Radius.circular(50.0))),
                  child: Image.network('https://papik.pro/uploads/posts/2021-12/thumbs/1639205098_29-papik-pro-p-yedinorog-klipart-39.png'),
                ),
                const Text('Навигация во Flutter'),
              ],
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.one_k),
          title: const Text('Каталог'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.two_k),
          title: const Text('Корзина'),
          onTap: () {},
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text('Профиль',
          style: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.bold)),
          ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Настройки'),
          onTap: () {},//
        ),
      ],
    ),
  );
  
  PreferredSizeWidget _appBar() => AppBar(
    title: const Text('Демо темы',),
    actions: [
      IconButton(
        icon: const Icon(Icons.add_alert),
        tooltip: 'Уведомления',
         onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.settings),
        tooltip: 'Настройки',
        onPressed: () {},
      ),
    ],
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(), // структура виджетов апп бар и панели дравер вынесена в отдельные функции
      drawer: _NavigationDraw(),
      body: SingleChildScrollView( // виджет для скроллинга (??)
        child: Center(
          child: Column(
            children: [
              Text('Заголовок', style: Theme.of(context).textTheme.headline5),
              Container(
                height: 100,

                color: Theme.of(context).colorScheme.secondary, // Theme.of(context) - обращаемся к конктексной теме, заданной в виджете (задается в MaterialApp): см. Widget build(BuildContext context) ; .colorScheme - обращаемся к цветовой схеме; .secondary - обращаемся к соответсвующему заданному значению
              ),
              Row(
                children: const [
                Text('Логин: '),
                  Expanded(child: TextField()),
                ],
              ),
              Row(
                children: const [
                  Text('Пароль: '),
                  Expanded(child: TextField()),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Войти')),
              const Text(Strings.longBodyText),
              Slider(
                value: _currentSliderValue,
                  max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              SwitchListTile(
                  title: const Text('Темная тема'),
                  value: _isDarkTheme, 
                  onChanged: (val) {
                    setState(() {
                      _isDarkTheme = !_isDarkTheme;
                      if (_isDarkTheme) {

                      }
                    });
                  })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Профиль'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: 'Баланс'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Настройка'),
        ], // для нижней панели стили отдельно задаются
      ),
    );
  }
}

