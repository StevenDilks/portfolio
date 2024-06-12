import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_theme/json_theme.dart';
import 'package:portfolio/screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final theme = ThemeDecoder.decodeThemeData(
    jsonDecode(
      await rootBundle.loadString(
        'assets/theme.json',
      ),
    ),
  )!;

  runApp(MyApp(theme: theme));
}

class MyApp extends StatelessWidget {
  final ThemeData theme;

  const MyApp({
    super.key,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const HomeScreen(),
    );
  }
}
