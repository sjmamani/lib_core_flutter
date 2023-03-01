import 'package:flutter/material.dart';

import 'l2_colors.dart';
import 'l2_text_styles.dart';

/// Create a [ThemeData] that's used to configure a [Theme] with L2 design
/// system.
///
/// For light theme, use [L2ThemeData.lightTheme] or [L2ThemeData.darkTheme] for
/// dark theme.
class L2ThemeData {
  static ThemeData? get lightTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: L2Colors.background,
        foregroundColor: L2Colors.rojoSeguro,
        titleTextStyle: L2TextStyles.h6.copyWith(
          color: L2Colors.licorice,
        ),
      ),
      backgroundColor: L2Colors.background,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        elevation: 10,
        selectedLabelStyle: L2TextStyles.bodySmall,
        unselectedLabelStyle: L2TextStyles.bodySmall,
        selectedItemColor: L2Colors.rojoSeguro,
        unselectedItemColor: L2Colors.cello,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: L2Colors.background,
      ),
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        checkColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            return Colors.white;
          },
        ),
        fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            return L2Colors.cello;
          },
        ),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: Colors.white,
        elevation: 24,
        titleTextStyle: L2TextStyles.h4.copyWith(color: L2Colors.licorice),
        contentTextStyle: L2TextStyles.bodyLarge.copyWith(
          color: L2Colors.cello,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return L2Colors.rojoSeguro.withOpacity(0.5);
              }
              return L2Colors.rojoSeguro;
            },
          ),
          elevation: MaterialStateProperty.resolveWith<double?>(
            (Set<MaterialState> states) {
              return 0.0;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return Colors.white;
            },
          ),
          textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
            (Set<MaterialState> states) {
              return L2TextStyles.bodyMediumBold.copyWith(height: 0);
            },
          ),
          padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(
            (Set<MaterialState> states) {
              return const EdgeInsets.symmetric(vertical: 10);
            },
          ),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
            (Set<MaterialState> states) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              );
            },
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.white.withOpacity(0.5);
              }
              return Colors.white;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return L2Colors.rojoSeguro;
            },
          ),
          textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
            (Set<MaterialState> states) {
              return L2TextStyles.bodyMediumBold.copyWith(height: 0);
            },
          ),
          padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(
            (Set<MaterialState> states) {
              return const EdgeInsets.symmetric(vertical: 10);
            },
          ),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
            (Set<MaterialState> states) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: L2Colors.water, width: 1.0),
              );
            },
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return L2Colors.cerulean;
            },
          ),
          textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
            (Set<MaterialState> states) {
              return L2TextStyles.bodyMedium.copyWith(height: 0);
            },
          ),
          padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(
            (Set<MaterialState> states) {
              return const EdgeInsets.symmetric(vertical: 10);
            },
          ),
        ),
      ),
      errorColor: L2Colors.error,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: L2Colors.licorice,
        foregroundColor: L2Colors.alice,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: L2Colors.rojoSeguro, width: 2),
        ),
        errorStyle: L2TextStyles.bodySmall.copyWith(color: L2Colors.error),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: L2Colors.rojoSeguro, width: 2),
        ),
        errorMaxLines: 2,
        fillColor: L2Colors.alice,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: L2Colors.rojoSeguro.withOpacity(0.4),
            width: 3.0,
          ),
        ),
        counterStyle: L2TextStyles.bodySmall,
        hintStyle: L2TextStyles.bodyLarge.copyWith(
          color: L2Colors.mischka,
        ),
        suffixIconColor: L2Colors.cello,
      ),
      primaryColor: L2Colors.rojoSeguro,
      // primarySwatch: L2Colors.generateMaterialColor(L2Colors.rojoSeguro),
      scaffoldBackgroundColor: L2Colors.alice,
      snackBarTheme: SnackBarThemeData(
        backgroundColor: L2Colors.licorice,
        contentTextStyle: L2TextStyles.bodySmall.copyWith(
          color: Colors.white,
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: L2Colors.licorice,
      ),
      textTheme: TextTheme(
        subtitle1: L2TextStyles.bodyLarge,
        bodyText2: L2TextStyles.bodyLarge,
      ),
      toggleableActiveColor: L2Colors.rojoSeguro,
    );
  }

  static ThemeData? get darkTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: L2Colors.darkBackground,
        foregroundColor: L2Colors.darkRojoSeguro,
        titleTextStyle: L2TextStyles.h6.copyWith(
          color: L2Colors.highEmphasis,
        ),
        elevation: 4,
      ),
      applyElevationOverlayColor: true,
      backgroundColor: L2Colors.darkBackground,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: L2Colors.darkBackground,
        elevation: 8,
        selectedLabelStyle: L2TextStyles.bodySmall,
        unselectedLabelStyle: L2TextStyles.bodySmall,
        selectedItemColor: L2Colors.darkRojoSeguro,
        unselectedItemColor: L2Colors.mediumEmphasis,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: L2Colors.darkBackground,
      ),
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: L2Colors.darkRojoSeguro,
        secondary: L2Colors.darkRojoSeguro,
      ),
      checkboxTheme: CheckboxThemeData(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        checkColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            return L2Colors.darkBackground;
          },
        ),
        fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            return L2Colors.mediumEmphasis;
          },
        ),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: L2Colors.darkBackground,
        elevation: 24,
        titleTextStyle: L2TextStyles.h4.copyWith(
          color: L2Colors.highEmphasis,
        ),
        contentTextStyle: L2TextStyles.bodyLarge.copyWith(
          color: L2Colors.mediumEmphasis,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return L2Colors.darkRojoSeguro.withOpacity(0.5);
              }
              return L2Colors.darkRojoSeguro;
            },
          ),
          elevation: MaterialStateProperty.resolveWith<double?>(
            (Set<MaterialState> states) {
              return 0.0;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.black38;
              }
              return Colors.black;
            },
          ),
          shadowColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return Colors.transparent;
            },
          ),
          textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
            (Set<MaterialState> states) {
              return L2TextStyles.bodyMediumBold.copyWith(height: 0);
            },
          ),
          padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(
            (Set<MaterialState> states) {
              return const EdgeInsets.symmetric(vertical: 10);
            },
          ),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
            (Set<MaterialState> states) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              );
            },
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return L2Colors.white.withOpacity(0.5);
              }
              return L2Colors.white;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return Colors.black;
            },
          ),
          textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
            (Set<MaterialState> states) {
              return L2TextStyles.bodyMediumBold.copyWith(height: 0);
            },
          ),
          padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(
            (Set<MaterialState> states) {
              return const EdgeInsets.symmetric(vertical: 10);
            },
          ),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return L2Colors.highEmphasis;
            },
          ),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
            (Set<MaterialState> states) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: L2Colors.water, width: 1.0),
              );
            },
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return L2Colors.darkCerulean;
            },
          ),
          textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
            (Set<MaterialState> states) {
              return L2TextStyles.bodyMedium.copyWith(height: 0);
            },
          ),
          padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(
            (Set<MaterialState> states) {
              return const EdgeInsets.symmetric(vertical: 10);
            },
          ),
        ),
      ),
      errorColor: L2Colors.darkError,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: L2Colors.cromaticGrey,
        foregroundColor: Colors.black,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: L2Colors.darkError, width: 2),
        ),
        errorStyle: L2TextStyles.bodySmall.copyWith(color: L2Colors.darkError),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: L2Colors.darkError, width: 2),
        ),
        errorMaxLines: 2,
        fillColor: L2Colors.darkAlice,
        filled: true,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: L2Colors.darkRojoSeguro,
            width: 2,
          ),
        ),
        counterStyle: L2TextStyles.bodySmall.copyWith(
          color: L2Colors.mediumEmphasis,
        ),
        hintStyle: L2TextStyles.bodyLarge.copyWith(
          color: L2Colors.mediumEmphasis,
        ),
        //suffixIconColor: L2Colors.mediumEmphasis,
      ),
      primaryColor: L2Colors.darkRojoSeguro,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: L2Colors.darkRojoSeguro,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return L2Colors.darkRojoSeguro;
            }
            return L2Colors.mediumEmphasis;
          },
        ),
      ),
      scaffoldBackgroundColor: L2Colors.darkBackground,
      snackBarTheme: SnackBarThemeData(
        backgroundColor: L2Colors.highEmphasis,
        contentTextStyle: L2TextStyles.bodySmall.copyWith(
          color: Colors.black,
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: L2Colors.mischka,
      ),
      textTheme: TextTheme(
        subtitle1: L2TextStyles.bodyLarge.copyWith(
          color: L2Colors.highEmphasis,
        ),
        bodyText2: L2TextStyles.bodyLarge.copyWith(
          color: L2Colors.highEmphasis,
        ),
      ),
      toggleableActiveColor: L2Colors.darkRojoSeguro,
    );
  }
}
