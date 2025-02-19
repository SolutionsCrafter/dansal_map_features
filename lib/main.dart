// lib/main.dart
import 'package:dansal_map_features/navigation_bar.dart';
import 'package:dansal_map_features/theme/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wesak Dansal App',
        // theme
        themeMode: ThemeMode.system,
        theme: MyAppTheme.lightTheme,
        darkTheme: MyAppTheme.darkTheme,
        home: const MyNavigationBar(),
      );
}
