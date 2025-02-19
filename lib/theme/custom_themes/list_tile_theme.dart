import 'package:flutter/material.dart';

class MyListTileTheme {
  MyListTileTheme._();

  // Light Theme ListTile Theme
  static ListTileThemeData lightListTileTheme = ListTileThemeData(
    contentPadding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
    // Title Styling
    titleTextStyle: const TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),

    // Subtitle Styling
    subtitleTextStyle: TextStyle(
      fontSize: 14,
      color: Colors.grey.shade600,
    ),

    // Icon Styling
    iconColor: Colors.black54,

    // Shape and Appearance
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),

    // Hover and Splash Effects
    enableFeedback: true,
    mouseCursor: WidgetStateMouseCursor.clickable,
  );

  // Dark Theme ListTile Theme
  static ListTileThemeData darkListTileTheme = ListTileThemeData(
    // Title Styling
    titleTextStyle: const TextStyle(
      fontSize: 16,
      color: Colors.white70,
    ),

    // Subtitle Styling
    subtitleTextStyle: TextStyle(
      fontSize: 14,
      color: Colors.grey.shade400,
    ),

    // Icon Styling
    iconColor: Colors.white54,

    // Shape and Appearance
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),

    // Hover and Splash Effects
    enableFeedback: true,
    mouseCursor: WidgetStateMouseCursor.clickable,
  );
}
