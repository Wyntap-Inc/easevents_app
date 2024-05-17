import '../exports.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(scrolledUnderElevation: 0),
        colorScheme: ColorScheme.fromSeed(seedColor: AppStyles.primaryColor)
            .copyWith(primary: AppStyles.primaryColor),
        primaryColorLight: AppStyles.primaryColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: TextTheme(
          titleSmall: TextStyle(
            color: AppStyles.textPrimary,
          ),
          titleMedium: TextStyle(
            color: AppStyles.textPrimary,
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.w500,
            color: AppStyles.textPrimary,
          ),
          labelSmall: TextStyle(
            color: AppStyles.textPrimary,
          ),
          labelMedium: TextStyle(
            color: AppStyles.textPrimary,
          ),
          labelLarge: TextStyle(
            color: AppStyles.textPrimary,
          ),
          bodySmall: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
            color: AppStyles.textPrimary,
          ),
          bodyMedium: TextStyle(
            color: AppStyles.textPrimary,
          ),
          bodyLarge: TextStyle(
            color: AppStyles.textPrimary,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          labelStyle: TextStyle(
            fontSize: 13,
            color: AppStyles.textPrimary,
          ),
          hintStyle: TextStyle(
            fontSize: 13,
            color: AppStyles.textPrimary,
          ),
          counterStyle: TextStyle(
            fontSize: 13,
            color: AppStyles.textPrimary,
          ),
          errorStyle: TextStyle(
            fontSize: 13,
            color: AppStyles.errorBorderSideColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppStyles.enabledBorderSideColor,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppStyles.primaryColor,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppStyles.errorBorderSideColor,
              width: 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppStyles.errorBorderSideColor,
              width: 1,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 44),
            backgroundColor: AppStyles.primaryColor,
            foregroundColor: AppStyles.primaryWhite,
            textStyle: const TextStyle(fontSize: 13),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, 44),
            foregroundColor: AppStyles.primaryColor,
            textStyle: const TextStyle(fontSize: 13),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: AppStyles.primaryWhite),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
        ),
      );
}
