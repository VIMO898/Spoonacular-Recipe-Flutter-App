import 'package:app/models/theme_state_model.dart';
import 'package:flutter/material.dart';

import '../constants/enums.dart';

class AppThemes {
  final ThemeStateModel themeState;
  const AppThemes(this.themeState);
  static final _baseTextTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    headlineMedium: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    titleLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 16),
    bodyMedium: TextStyle(fontSize: 14),
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
  );

  double get textThemeFactor => {
    TextScaleLevel.small: 0.85,
    TextScaleLevel.medium: 1.0,
    TextScaleLevel.large: 1.15,
  }[themeState.textScaleLevel]!;

  TextTheme get textTheme => scaleTextTheme(_baseTextTheme, textThemeFactor);

  Color get themeStatePrimaryColor => themeState.primaryColor.color;

  ThemeData get lightTheme => ThemeData(
    fontFamily: themeState.fontFamily,
    primaryColor: themeStatePrimaryColor,
    // primaryColor: Colors.orange.shade800,
    textTheme: textTheme.apply(),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey.shade300,
    cardColor: Colors.grey.shade100,
    shadowColor: Colors.grey.shade300,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black, size: 22),
      actionsIconTheme: IconThemeData(size: 22),
      backgroundColor: Colors.grey.shade100,
      toolbarHeight: kToolbarHeight + 15,
      titleTextStyle: textTheme.titleLarge!.copyWith(color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 4,
      selectedItemColor: themeStatePrimaryColor,
      unselectedItemColor: Colors.grey.shade800,
      selectedIconTheme: IconThemeData(size: 26),
      unselectedIconTheme: IconThemeData(size: 26),
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      type: BottomNavigationBarType.fixed,
    ),
    dividerColor: Colors.grey.shade400,
    dividerTheme: DividerThemeData(color: Colors.grey.shade400, thickness: .75),
    colorScheme: ColorScheme.fromSeed(
      // primarySwatch: Colors.orange,
      // primary: themeState.primaryColorLight,
      seedColor: themeStatePrimaryColor,
      brightness: Brightness.light,
      surface: Colors.white,
    ),
  );

  ThemeData get darkTheme => ThemeData(
    fontFamily: themeState.fontFamily,
    primaryColor: themeStatePrimaryColor,
    // primaryColor: Colors.orange.shade600,
    textTheme: textTheme.apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    cardColor: Colors.grey.shade900,
    shadowColor: Colors.blueGrey.shade800,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white, size: 22),
      actionsIconTheme: IconThemeData(size: 22),
      backgroundColor: Colors.grey.shade900,
      toolbarHeight: kToolbarHeight + 15,
      titleTextStyle: textTheme.titleLarge!.copyWith(color: Colors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 4,
      selectedItemColor: themeStatePrimaryColor,
      unselectedItemColor: Colors.grey.shade300,
      selectedIconTheme: IconThemeData(size: 26),
      unselectedIconTheme: IconThemeData(size: 26),
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      type: BottomNavigationBarType.fixed,
    ),
    dividerTheme: DividerThemeData(color: Colors.grey.shade700, thickness: .75),
    colorScheme: ColorScheme.fromSeed(
      // primarySwatch: Colors.orange,
      seedColor: themeStatePrimaryColor,

      brightness: Brightness.dark,
      surface: Colors.black,
    ),
  );
}

TextTheme scaleTextTheme(TextTheme base, double factor) {
  return base.copyWith(
    displayLarge: base.displayLarge?.copyWith(
      fontSize: base.displayLarge!.fontSize! * factor,
    ),
    displayMedium: base.displayMedium?.copyWith(
      fontSize: base.displayMedium!.fontSize! * factor,
    ),
    displaySmall: base.displaySmall?.copyWith(
      fontSize: base.displaySmall!.fontSize! * factor,
    ),
    headlineLarge: base.headlineLarge?.copyWith(
      fontSize: base.headlineLarge!.fontSize! * factor,
    ),
    headlineMedium: base.headlineMedium?.copyWith(
      fontSize: base.headlineMedium!.fontSize! * factor,
    ),
    headlineSmall: base.headlineSmall?.copyWith(
      fontSize: base.headlineSmall!.fontSize! * factor,
    ),
    titleLarge: base.titleLarge?.copyWith(
      fontSize: base.titleLarge!.fontSize! * factor,
    ),
    titleMedium: base.titleMedium?.copyWith(
      fontSize: base.titleMedium!.fontSize! * factor,
    ),
    titleSmall: base.titleSmall?.copyWith(
      fontSize: base.titleSmall!.fontSize! * factor,
    ),
    bodyLarge: base.bodyLarge?.copyWith(
      fontSize: base.bodyLarge!.fontSize! * factor,
    ),
    bodyMedium: base.bodyMedium?.copyWith(
      fontSize: base.bodyMedium!.fontSize! * factor,
    ),
    bodySmall: base.bodySmall?.copyWith(
      fontSize: base.bodySmall!.fontSize! * factor,
    ),
    labelLarge: base.labelLarge?.copyWith(
      fontSize: base.labelLarge!.fontSize! * factor,
    ),
    labelMedium: base.labelMedium?.copyWith(
      fontSize: base.labelMedium!.fontSize! * factor,
    ),
    labelSmall: base.labelSmall?.copyWith(
      fontSize: base.labelSmall!.fontSize! * factor,
    ),
  );
}
