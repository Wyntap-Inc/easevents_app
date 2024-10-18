import 'package:easevents_app/exports.dart';

class EvAppTheme {
  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: EVStyles.primaryColor),
          scrolledUnderElevation: 0,
          backgroundColor: EVStyles.primaryWhite,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        scaffoldBackgroundColor: EVStyles.primaryWhite,
        colorScheme: ColorScheme.fromSeed(seedColor: EVStyles.primaryColor)
            .copyWith(primary: EVStyles.primaryColor),
        primaryColorLight: EVStyles.primaryColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: const TextTheme(
          titleSmall: TextStyle(
            color: EVStyles.textPrimary,
          ),
          titleMedium: TextStyle(
            color: EVStyles.textPrimary,
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.w500,
            color: EVStyles.textPrimary,
          ),
          labelSmall: TextStyle(
            color: EVStyles.textPrimary,
          ),
          labelMedium: TextStyle(
            color: EVStyles.textPrimary,
          ),
          labelLarge: TextStyle(
            color: EVStyles.textPrimary,
          ),
          bodySmall: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
            color: EVStyles.textPrimary,
          ),
          bodyMedium: TextStyle(
            color: EVStyles.textPrimary,
          ),
          bodyLarge: TextStyle(
            color: EVStyles.textPrimary,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          labelStyle: const TextStyle(
            fontSize: 13,
            color: EVStyles.textPrimary,
          ),
          hintStyle: const TextStyle(
            fontSize: 13,
            color: EVStyles.textPrimary,
          ),
          counterStyle: const TextStyle(
            fontSize: 13,
            color: EVStyles.textPrimary,
          ),
          errorStyle: const TextStyle(
            fontSize: 13,
            color: EVStyles.errorBorderSideColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: EVStyles.enabledBorderSideColor,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: EVStyles.primaryColor,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: EVStyles.errorBorderSideColor,
              width: 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: EVStyles.errorBorderSideColor,
              width: 1,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 44),
            backgroundColor: EVStyles.primaryColor,
            foregroundColor: EVStyles.primaryWhite,
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
            foregroundColor: EVStyles.primaryColor,
            textStyle: const TextStyle(fontSize: 13),
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: EVStyles.primaryWhite),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
        ),
        listTileTheme: const ListTileThemeData(
          horizontalTitleGap: 10,
          minVerticalPadding: 15,
          minTileHeight: 69,
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          titleAlignment: ListTileTitleAlignment.center,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          enableFeedback: false,
          selectedItemColor: EVStyles.primaryColor,
          selectedLabelStyle: TextStyle(color: EVStyles.primaryColor),
          selectedIconTheme: IconThemeData(
            color: EVStyles.primaryColor,
          ),
          unselectedItemColor: EVStyles.primaryColor,
          unselectedLabelStyle: TextStyle(color: EVStyles.primaryColor),
          unselectedIconTheme: IconThemeData(
            color: EVStyles.primaryColor,
          ),
          type: BottomNavigationBarType.fixed,
        ),
      );
}
