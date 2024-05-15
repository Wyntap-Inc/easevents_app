import '../exports.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        // scaffoldBackgroundColor: AppColors.primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor)
            .copyWith(primary: AppColors.primaryColor),
        primaryColorLight: AppColors.primaryColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: TextTheme(
          titleSmall: TextStyle(
            color: AppColors.textPrimary,
          ),
          titleMedium: TextStyle(
            color: AppColors.textPrimary,
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
          labelSmall: TextStyle(
            color: AppColors.textPrimary,
          ),
          labelMedium: TextStyle(
            color: AppColors.textPrimary,
          ),
          labelLarge: TextStyle(
            color: AppColors.textPrimary,
          ),
          bodySmall: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
            color: AppColors.textPrimary,
          ),
          bodyMedium: TextStyle(
            color: AppColors.textPrimary,
          ),
          bodyLarge: TextStyle(
            color: AppColors.textPrimary,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          labelStyle: TextStyle(
            fontSize: 13,
            color: AppColors.textPrimary,
          ),
          hintStyle: TextStyle(
            fontSize: 13,
            color: AppColors.textPrimary,
          ),
          counterStyle: TextStyle(
            fontSize: 13,
            color: AppColors.textPrimary,
          ),
          errorStyle: TextStyle(
            fontSize: 13,
            color: AppColors.errorBorderSideColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.enabledBorderSideColor,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.errorBorderSideColor,
              width: 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.errorBorderSideColor,
              width: 1,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 44),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.primaryWhite,
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
            foregroundColor: AppColors.primaryColor,
            textStyle: const TextStyle(fontSize: 13),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: AppColors.primaryWhite),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
        ),
      );
}
