
import 'package:flutter/material.dart';

ThemeData globalTheme() => ThemeData(
  fontFamily: 'Georgia',
  splashColor: Colors.yellow, // цвет "вспышки" (активации кнопки/строки) при щелчке/тапе

  colorScheme: ColorScheme.fromSwatch( // см спец раздел в документации на сайте
    brightness: Brightness.light, // light/dark
    primarySwatch: Colors.purple, // первичный цвет (аппбара и акттвной кнопкив тч), не меняет автоматически оформление панели навигации
  ).copyWith( // цвет акцента
    secondary: Colors.cyan,
  ),

  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 30.0, color: Colors.white, fontStyle: FontStyle.italic), // почему-то не поменялся цвет
    bodyText2: TextStyle(fontSize: 16.0, color: Colors.deepPurple, fontFamily: 'Hind'),
  ),
);

// функция, возвращающая в качестве значения тему

