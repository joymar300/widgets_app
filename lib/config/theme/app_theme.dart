import 'package:flutter/material.dart';

var colorList = <Color>[
  Colors.amber,
  Colors.purple,
  Colors.pink,
  Colors.green,
  Colors.orange,
  Colors.indigo,
];

class AppTheme {
  final int selectedColor;
  final bool darkMode;
  AppTheme({this.darkMode = false, this.selectedColor = 0})
      : assert(selectedColor >= 0, 'el color debe ser mayor que sero'),
        assert(selectedColor < colorList.length,
            'the selected color must be ther in less that ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: darkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: AppBarTheme(
        centerTitle: true,
      ));
}
