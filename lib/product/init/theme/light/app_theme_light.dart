import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_theme.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance => _instance ??= AppThemeLight._init();

  AppThemeLight._init();

  @override
  ThemeData get theme => ThemeData(
        colorScheme: _colorSchemeLight,
        textTheme: _textThemeLight,
        scaffoldBackgroundColor: _colorSchemeLight.background,
        appBarTheme: _appBarTheme,
        inputDecorationTheme: _inputDecorationTheme,
        elevatedButtonTheme: _elevatedButtonTheme,
        outlinedButtonTheme: _outlinedButtonTheme,
        timePickerTheme: _timePickerTheme,
        fontFamily: "Inter",
      );
  /* Color Palette For The App. */

  ColorScheme get _colorSchemeLight => const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xff1779d3), //
        primaryContainer: Color(0xffffbb54), //
        secondary: Color(0xffE7912D), //
        onSecondary: Color(0xffffffff),
        onPrimary: Color(0xffffffff), //
        background: Color(0xffF4F8FB), //
        onBackground: Color(0xff102E53), //
        error: Color(0xffff5656), //
        errorContainer: Color(0xFFFCFF57), //
        onError: Color(0xffffffff),
        surface: Color(0xffE6EBF3),
        onSurface: Color(0xff596372), //
        tertiary: Color(0xff515BF6), //
        tertiaryContainer: Color(0xff59C08D), //
        onTertiary: Color(0xffABB3BB), //
        onSurfaceVariant: Color(0xff525978), //
        secondaryContainer: Color(0xFFE5E5E5), //
        onTertiaryContainer: Color(0xffDADADC), //
        onErrorContainer: Color(0xffffcc86), //
        inversePrimary: Color(0xff40a3ff),
        inverseSurface: Color(0xffadd328),
        onPrimaryContainer: Color(0xff024786),
        onInverseSurface: Color(0xffDFE4EC),
      );

  TimePickerThemeData get _timePickerTheme =>
      TimePickerThemeData(backgroundColor: _colorSchemeLight.onSecondary);
  /* Text Theme For The App */

  TextTheme get _textThemeLight => TextTheme(
        displayLarge: TextStyle(
          fontSize: 34.sp,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.5,
          color: _colorSchemeLight.onPrimary,
        ),
        displayMedium: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
          color: _colorSchemeLight.onPrimary,
        ),
        displaySmall: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w400,
          color: _colorSchemeLight.onPrimary,
        ),
        headlineLarge: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
          color: _colorSchemeLight.onPrimary,
        ),
        headlineMedium: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: _colorSchemeLight.onPrimary,
        ),
        headlineSmall: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: _colorSchemeLight.onPrimary,
        ),
        labelLarge: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          color: _colorSchemeLight.onPrimary,
        ),
        labelMedium: TextStyle(
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
          color: _colorSchemeLight.onPrimary,
        ),
        labelSmall: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
          color: _colorSchemeLight.onPrimary,
        ),
        bodyLarge: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.w400,
          color: _colorSchemeLight.onPrimary,
        ),
        bodyMedium: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: _colorSchemeLight.onPrimary,
        ),
        titleMedium: TextStyle(
          fontSize: 28.sp,
          fontWeight: FontWeight.w500,
          color: _colorSchemeLight.onPrimary,
        ),
        titleSmall: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeight.w500,
          color: _colorSchemeLight.onPrimary,
        ),
      );

  /* Appbar Theme */

  AppBarTheme get _appBarTheme => AppBarTheme(
        backgroundColor: _colorSchemeLight.background,
        titleTextStyle: _textThemeLight.bodyMedium!
            .copyWith(color: _colorSchemeLight.onSurface),
      );

  /* Text Field Theme */

  InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
        filled: true,
        focusColor: _colorSchemeLight.secondaryContainer,
        labelStyle: _textThemeLight.labelLarge!
            .copyWith(color: _colorSchemeLight.onPrimary.withOpacity(0.4)),
        floatingLabelStyle: _textThemeLight.labelLarge!
            .copyWith(color: _colorSchemeLight.onBackground.withOpacity(0.4)),
        hintStyle: _textThemeLight.headlineLarge!
            .copyWith(color: _colorSchemeLight.onPrimary.withOpacity(0.8)),
        helperStyle: _textThemeLight.titleSmall!
            .copyWith(color: _colorSchemeLight.primary),
        fillColor: _colorSchemeLight.secondaryContainer.withOpacity(0.4),
        prefixIconColor: _colorSchemeLight.onBackground.withOpacity(0.4),
        errorStyle: _textThemeLight.titleSmall!
            .copyWith(color: _colorSchemeLight.error),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: _colorSchemeLight.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: _colorSchemeLight.error),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          gapPadding: 0,
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          gapPadding: 0,
          borderSide: BorderSide(color: _colorSchemeLight.primary),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: _colorSchemeLight.surface),
        ),
      );

  /* Elevated Button Theme */

  ElevatedButtonThemeData get _elevatedButtonTheme => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: _colorSchemeLight.onBackground,
          backgroundColor: _colorSchemeLight.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.w),
          ),
          elevation: 0,
          textStyle: _textThemeLight.bodyLarge!.copyWith(
              color: _colorSchemeLight.onBackground,
              fontWeight: FontWeight.w500),
        ),
      );
  OutlinedButtonThemeData get _outlinedButtonTheme => OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _colorSchemeLight.onPrimary,
          backgroundColor: Colors.black.withOpacity(0.7),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          textStyle: _textThemeLight.bodyMedium,
        ),
      );
}
