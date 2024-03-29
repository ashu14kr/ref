import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray90002,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.greenA200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.h),
          ),
          shadowColor: appTheme.greenA200.withOpacity(0.16),
          elevation: 20,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary.withOpacity(0.5),
            width: 2.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 17,
        space: 17,
        color: appTheme.blueGray100,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray600,
          fontSize: 18.fSize,
          fontFamily: 'Neue Montreal',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray600,
          fontSize: 14.fSize,
          fontFamily: 'Neue Montreal',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray600,
          fontSize: 12.fSize,
          fontFamily: 'Neue Montreal',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.greenA200,
          fontSize: 36.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 24.fSize,
          fontFamily: 'Neue Montreal',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 12.fSize,
          fontFamily: 'Myriad Pro',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Neue Montreal',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0X193E474F),
    primaryContainer: Color(0XFFEDF0F3),
    secondaryContainer: Color(0XFF354E4C),

    // Error colors
    onError: Color(0XFF364E4C),
    onErrorContainer: Color(0X3F000000),

    // On colors(text colors)
    onPrimary: Color(0XFF07060B),
    onPrimaryContainer: Color(0XFF252E35),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF08080E);

  // Blue
  Color get blue700 => Color(0XFF2A5ADA);
  Color get blue900 => Color(0XFF0033AD);

  // BlueGray
  Color get blueGray100 => Color(0XFFCDEAE8);
  Color get blueGray10001 => Color(0XFFCEEAE8);
  Color get blueGray600 => Color(0XFF528274);
  Color get blueGray900 => Color(0XFF002042);
  Color get blueGray90001 => Color(0XFF001F3F);
  Color get blueGray90002 => Color(0XFF001E3D);
  Color get blueGray90003 => Color(0XFF28383B);

  // DeepOrange
  Color get deepOrange200 => Color(0XFFF5AB85);
  Color get deepOrangeA700 => Color(0XFFE32C04);

  // DeepPurple
  Color get deepPurpleA200 => Color(0XFF7833F6);

  // Gray
  Color get gray400 => Color(0XFFC1C7CD);
  Color get gray600 => Color(0XFF777777);
  Color get gray900 => Color(0XFF001C3A);
  Color get gray90001 => Color(0XFF171D22);
  Color get gray90002 => Color(0XFF1B232A);
  Color get gray90003 => Color(0XFF161C22);

  // Green
  Color get green300 => Color(0XFF6EC4A1);
  Color get green30001 => Color(0XFF70C3A0);
  Color get greenA200 => Color(0XFF5ED5A8);

  // Orange
  Color get orange300 => Color(0XFFFCBD68);

  // Red
  Color get red300 => Color(0XFFEE7671);
  Color get red30001 => Color(0XFFD27358);
  Color get red400 => Color(0XFFDD4A4A);
  Color get red900 => Color(0XFF7A2C18);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow900 => Color(0XFFF7931A);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
