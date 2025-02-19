import 'package:flutter/material.dart';

class MyTextTheme {
  MyTextTheme._();

  /// Light Theme
  static TextTheme lightTextTheme = TextTheme(
    // display
    displayLarge: const TextStyle().copyWith(
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontFamily: 'Inter',
    ),

    // headline
    headlineLarge: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontFamily: 'Inter',
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
      fontFamily: 'Inter',
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w300,
      color: Colors.black,
      fontFamily: 'Inter',
    ),

    // title
    titleLarge: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontFamily: 'Inter',
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
      fontFamily: 'Inter',
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w300,
      color: Colors.black,
      fontFamily: 'Inter',
    ),

    // body
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontFamily: 'Inter',
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
      fontFamily: 'Inter',
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w300,
      color: Colors.black.withValues(alpha: 0.5),
      fontFamily: 'Inter',
    ),

    // label
    labelLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
      fontFamily: 'Inter',
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      color: Colors.black.withValues(alpha: 0.5),
      fontFamily: 'Inter',
    ),
  );

  /// Dark Theme
  static TextTheme darkTextTheme = TextTheme(
    // display
    displayLarge: const TextStyle().copyWith(
      fontSize: 28.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: 'Inter',
    ),

    // headline
    headlineLarge: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: 'Inter',
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
      fontFamily: 'Inter',
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
      fontFamily: 'Inter',
    ),

    // title
    titleLarge: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: 'Inter',
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
      fontFamily: 'Inter',
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
      fontFamily: 'Inter',
    ),

    // body
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: 'Inter',
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
      fontFamily: 'Inter',
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w300,
      color: Colors.white.withValues(alpha: 0.5),
      fontFamily: 'Inter',
    ),

    // label
    labelLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
      fontFamily: 'Inter',
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      color: Colors.white.withValues(alpha: 0.5),
      fontFamily: 'Inter',
    ),
  );
}
