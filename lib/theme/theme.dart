import 'package:dansal_map_features/theme/custom_themes/appbar_theme.dart';
import 'package:dansal_map_features/theme/custom_themes/checkbox_theme.dart';
import 'package:dansal_map_features/theme/custom_themes/elevated_button_theme.dart';
import 'package:dansal_map_features/theme/custom_themes/list_tile_theme.dart';
import 'package:dansal_map_features/theme/custom_themes/navigation_bar_theme.dart';
import 'package:dansal_map_features/theme/custom_themes/outlined_button_theme.dart';
import 'package:dansal_map_features/theme/custom_themes/switch_list_theme.dart';
import 'package:dansal_map_features/theme/custom_themes/text_field_theme.dart';
import 'package:dansal_map_features/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class MyAppTheme {
  MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: const Color(0xFFEFF4F7),
    textTheme: MyTextTheme.lightTextTheme,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    checkboxTheme: MyCheckBoxtheme.lightCheckBoxTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme,
    bottomNavigationBarTheme: MyNavigationBarTheme.lightNavigationBarTheme,
    listTileTheme: MyListTileTheme.lightListTileTheme,
    switchTheme: MySwitchListTileTheme.lightSwitchTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MyTextTheme.darkTextTheme,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    checkboxTheme: MyCheckBoxtheme.darkCheckBoxTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.darkInputDecorationTheme,
    bottomNavigationBarTheme: MyNavigationBarTheme.darkNavigationBarTheme,
    listTileTheme: MyListTileTheme.darkListTileTheme,
    switchTheme: MySwitchListTileTheme.darkSwitchTheme,
  );
}
