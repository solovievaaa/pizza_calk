import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'global_theme.dart';
import 'list_2.5.dart';
import 'list_view_demo.dart';

void main() {
  runApp(MyList1());
}

@override
Widget build(BuildContext context) {
  return const Scaffold();
}

class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({Key? key}) : super(key: key);

  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    final _messengerKey = GlobalKey<ScaffoldMessengerState>();

    return MaterialApp(
      theme: globalTheme(),
      scaffoldMessengerKey: _messengerKey,
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Кейс 2.5'),
            actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.watch_later_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.wine_bar)),
          TextButton(
            onPressed: () {},
            child: const Text('Кнопка'),
            style: buttonStyle,
          )
        ]),
        drawer: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: [
             DrawerHeader(
                 decoration: const BoxDecoration(color: Colors.blue),
                 child: SizedBox(
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
                         child: Image.asset('assets/star.png'),),
                       const Text('Панель навигации',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                     ],
                   ),
                 )),

              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text('Профиль'),
              ),

              ListTile(
                leading: const Icon(Icons.account_circle_rounded),
                title: const Text('*пункт первый*'),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход в *пункт первый*')));},
              ),

              ListTile(
                leading: const Icon(Icons.access_time),
                title: const Text('*пункт второй*'),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход в *пункт второй*')));},
              ),

              ListTile(
                leading: const Icon(Icons.add_photo_alternate_outlined),
                title: const Text('*пункт третий*'),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход в *пункт третий*')));},
              ),

              const Divider(), // разделительная полоса

              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text('Персонализация'),),

              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Настройки профиля'),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход в настройки профиля')));},
              ),
            ])
        ),

        body: Container(
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/unicorn_1.jpeg'))),
          padding: const EdgeInsets.symmetric(horizontal: 5),
          width: double.infinity,
          child: Column(children: [
            const SizedBox(
              height: 15,
            ),

            Text('Заголовок', style: Theme.of(context).textTheme.headline5),

            Container(
              width: 330,
              height: 35,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(color: Colors.white70, width: 1.5)),
              alignment: Alignment.center,
              child: const Text('*это мог бы быть калькулятор пиццы*',
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 18,
                    fontStyle: FontStyle.italic),
              ),
            ), //

            const SizedBox(height: 18,),

            SizedBox(
                child: SlidingSwitch(
              value: false,
              width: 320,
              onChanged: (bool value) {print(value);},
              height: 40,
              animationDuration: const Duration(milliseconds: 140),
              onTap: () {},
              onDoubleTap: () {},
              onSwipe: () {},
              textOff: "Увы",
              textOn: "и ах",
              colorOn: const Color(0xffffffff),
              colorOff: const Color(0xf0ffffff),
              background: const Color(0xffECEFF1), // цвет фона кнопки
              buttonColor: const Color(0xff4c89e5), // цвет кнопки
              inactiveColor: const Color(0xff636f7b), // цвет неактивного текста
              // ),
            )),

            const SizedBox(
              height: 18,
            ),

            SizedBox(
              width: 295,
              height: 55,
              child: Card(
                elevation: 0,
                color: const Color(0xffefeedf),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        width: 48,
                        height: 48,
                        child: Image.asset('assets/star.png'),
                      ),
                    ),
                    const Text('Недоделанная кнопка',),
                    Switch(
                      value: false,
                      onChanged: (bool value) {},
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20,),

            SizedBox(
                width: 154,
                height: 42,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Тык-тык'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.0),
                    )))),
          ]), // SizedBox(width: 232, height: 123, child:
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
