// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'screens/calculator_page.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: _darkMode,
      home: CalculatorPage(),
    );
  }
}
