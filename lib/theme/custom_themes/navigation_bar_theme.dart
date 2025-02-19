import 'package:flutter/material.dart';

class MyNavigationBarTheme {
  MyNavigationBarTheme._();

  /// Light Theme Navigation Bar
  static const BottomNavigationBarThemeData lightNavigationBarTheme =
      BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Color(0xFF009DFF),
    unselectedItemColor: Color(0xFFA0A1A1),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    elevation: 8.0, // Optional: adds a subtle shadow
    selectedIconTheme: IconThemeData(
      color: Color(0xFF009DFF),
      size: 24,
    ),
    unselectedIconTheme: IconThemeData(
      color: Color(0xFFA0A1A1),
      size: 24,
    ),
    selectedLabelStyle: TextStyle(
      color: Color(0xFF009DFF),
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelStyle: TextStyle(
      color: Color(0xFFA0A1A1),
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
  );

  /// Dark Theme Navigation Bar
  static const BottomNavigationBarThemeData darkNavigationBarTheme =
      BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF151515),
    selectedItemColor: Color(0xFF009DFF),
    unselectedItemColor: Color(0xFFA0A1A1),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    elevation: 8.0,
    selectedIconTheme: IconThemeData(
      color: Color(0xFF009DFF),
      size: 24,
    ),
    unselectedIconTheme: IconThemeData(
      color: Color(0xFF757575),
      size: 24,
    ),
    selectedLabelStyle: TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelStyle: TextStyle(
      color: Color(0xFF757575),
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
  );
}
