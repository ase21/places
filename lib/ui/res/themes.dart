import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';

final lightTheme = ThemeData(
  primaryColor: lightModePrimaryColor,
  accentColor: lightModeAccentColor,
  backgroundColor: lightModeCardBackgroundColor,
  scaffoldBackgroundColor: lightModePrimaryColor,
  tabBarTheme: lightTabBarThemeData,
  bottomNavigationBarTheme: lightBottomNavigationBarThemeData,
  primaryTextTheme: ThemeData.light().primaryTextTheme.apply(
        displayColor: lightModeTextColor,
        bodyColor: lightModeTextColor,
      ),
  textTheme: ThemeData.light().textTheme.apply(
        displayColor: lightModeTextColor,
        bodyColor: lightModeTextColor,
      ),
  accentTextTheme: ThemeData.light().textTheme.apply(
    displayColor: lightModeTextColor,
    bodyColor: lightModeTextColor,
  ),
);

final darkTheme = ThemeData(
  primaryColor: darkModePrimaryColor,
  accentColor: darkModeAccentColor,
  backgroundColor: darkModeCardBackgroundColor,
  scaffoldBackgroundColor: darkModePrimaryColor,
  tabBarTheme: darkTabBarThemeData,
  bottomNavigationBarTheme: darkBottomNavigationBarThemeData,
  primaryTextTheme: ThemeData.dark().primaryTextTheme.apply(
        displayColor: darkModeTextColor,
        bodyColor: darkModeTextColor,
      ),
  textTheme: ThemeData.dark().textTheme.apply(
    displayColor: darkModeTextColor,
    bodyColor: darkModeTextColor,
  ),
);

BottomNavigationBarThemeData lightBottomNavigationBarThemeData =
    const BottomNavigationBarThemeData(
  backgroundColor: lightModePrimaryColor,
  selectedItemColor: lightModeSelectedColor,
  unselectedItemColor: lightModeUnselectedColor,
);

BottomNavigationBarThemeData darkBottomNavigationBarThemeData =
    const BottomNavigationBarThemeData(
  backgroundColor: darkModePrimaryColor,
  selectedItemColor: darkModeSelectedColor,
  unselectedItemColor: darkModeUnselectedColor,
);

TabBarTheme lightTabBarThemeData = TabBarTheme(
  labelColor: lightModeLabelColor,
  unselectedLabelColor: lightModeUnselectedLabelColor,
  indicator: BoxDecoration(
    borderRadius: BorderRadius.circular(
      25.0,
    ),
    color: lightModeIndicatorColor,
  ),
);

TabBarTheme darkTabBarThemeData = TabBarTheme(
  labelColor: darkModeLabelColor,
  unselectedLabelColor: darkModeUnselectedLabelColor,
  indicator: BoxDecoration(
    borderRadius: BorderRadius.circular(
      25.0,
    ),
    color: darkModeIndicatorColor,
  ),
);
