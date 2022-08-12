import 'package:flutter/material.dart';
import 'package:notes/presentation/resourses/color_manager.dart';
import 'package:notes/presentation/resourses/font_manager.dart';
import 'package:notes/presentation/resourses/styles_manager.dart';
import 'package:notes/presentation/resourses/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // mainColors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryLight,
    primaryColorDark: ColorManager.primaryDark,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.primaryLight,
    colorScheme: ColorScheme.light(
      primary: ColorManager.primary,
      primaryVariant: ColorManager.primaryLight,
      secondary: ColorManager.primaryDark,
      secondaryVariant: ColorManager.primary,
      surface: ColorManager.white,
      background: ColorManager.white,
      onPrimary: ColorManager.white,
      onSecondary: ColorManager.white,
      onSurface: ColorManager.black,
      onBackground: ColorManager.black,
      onError: ColorManager.white,
      brightness: Brightness.light,
    ),

    // cardTheme
    cardTheme: CardTheme(
      color: ColorManager.white,
      elevation: AppSize.s4,
      shadowColor: ColorManager.grey,
    ),

    // app bar Theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      shadowColor: ColorManager.primaryLight,
      elevation: AppSize.s4,
      titleTextStyle: getRegularTextStyle(
        color: ColorManager.white,
        fontSize: FontSizeManager.s16,
      ),
    ),

    // buttons Theme
    buttonTheme: ButtonThemeData(
      buttonColor: ColorManager.primary,
      disabledColor: ColorManager.grey1,
      highlightColor: ColorManager.primaryLight,
      splashColor: ColorManager.primaryLight,
      shape: const StadiumBorder(),
    ),

    //elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularTextStyle(
          color: ColorManager.white,
          fontSize: FontSizeManager.s17,
        ),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    // textTheme
    textTheme: TextTheme(
      displayLarge: getLightTextStyle(
          color: ColorManager.white, fontSize: FontSizeManager.s22),
      displayMedium: getMediumTextStyle(
          color: ColorManager.primary, fontSize: FontSizeManager.s16),
      headlineMedium: getRegularTextStyle(
          color: ColorManager.lightGrey, fontSize: FontSizeManager.s14),
      titleMedium: getSemiBoldTextStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSizeManager.s16,
      ),
      bodyLarge: getRegularTextStyle(color: ColorManager.grey1),
      bodyMedium: getRegularTextStyle(color: ColorManager.grey),
      bodySmall: getRegularTextStyle(color: ColorManager.grey1),
    ),

    //input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),

      // hint text style
      hintStyle: getRegularTextStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s14,
      ),

      // label text style
      labelStyle: getMediumTextStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s14,
      ),

      //error text style
      errorStyle: getRegularTextStyle(
        color: ColorManager.error,
        fontSize: FontSizeManager.s14,
      ),

      //enabled border style
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),

      //focused border style
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),

      //disabled border style
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey1,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),

      //error border style
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),

      //focused error border style
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
    ),

    //floating action button theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorManager.primary,
      foregroundColor: ColorManager.white,
      elevation: AppSize.s5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s50),
      ),
    ),

    timePickerTheme: TimePickerThemeData(
      backgroundColor: ColorManager.white,
      hourMinuteColor: ColorManager.primary.shade50,
      entryModeIconColor: ColorManager.primary,
      dialHandColor: ColorManager.primary.shade100,
      hourMinuteTextColor: ColorManager.primary,
      dayPeriodColor: ColorManager.primary.shade50,
      dayPeriodBorderSide: BorderSide(
        color: ColorManager.primary,
        width: AppSize.s1_5,
      ),
      dayPeriodShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      dayPeriodTextStyle: getBoldTextStyle(
        color: ColorManager.primary.shade200,
        fontSize: FontSizeManager.s14,
      ),
      dialBackgroundColor: ColorManager.white,
      dialTextColor: ColorManager.primary,
      hourMinuteShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
        side: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
        side: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
      ),
      helpTextStyle: getBoldTextStyle(
        color: ColorManager.primary,
        fontSize: FontSizeManager.s14,
      ),
      hourMinuteTextStyle: getBoldTextStyle(
        color: ColorManager.primary,
        fontSize: FontSizeManager.s14,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
      ),
    ),
  );
}
