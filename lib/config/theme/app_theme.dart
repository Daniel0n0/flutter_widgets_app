import 'package:flutter/material.dart';

const List<Color> colorList = [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme({selectedColor = 0}):
    assert(selectedColor >= 0, 'Selected color must be greater than 0'),
    assert(selectedColor < colorList.length, 'Selected color must be less than ${ colorList.length }'),
    selectedColor = (selectedColor >= 0 && selectedColor < colorList.length) ? selectedColor : 0;

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false
    )
  );
  
}