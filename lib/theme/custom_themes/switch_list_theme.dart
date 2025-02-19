import 'package:flutter/material.dart';

class MySwitchListTileTheme {
  static SwitchThemeData lightSwitchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF009DFF); // Blue when active
      }
      return Colors.white;
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF009DFF).withOpacity(0.5);
      }
      return Colors.grey.shade300;
    }),
  );

  static SwitchThemeData darkSwitchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF009DFF); // Bright blue when active
      }
      return Colors.grey.shade400; // Neutral thumb color when inactive
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF009DFF)
            .withOpacity(0.5); // Semi-transparent blue
      }
      return Colors.grey.shade800; // Dark gray when inactive
    }),
  );
}
