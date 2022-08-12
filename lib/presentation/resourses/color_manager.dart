import 'package:flutter/material.dart';

class ColorManager {
  static MaterialColor primary = const MaterialColor(
    0xFF1B243A,
    {
      50: Color(0x1A1B243A),
      100: Color(0x331B243A),
      200: Color(0x4D1B243A),
      300: Color(0x661B243A),
      400: Color(0x801B243A),
      500: Color(0x991B243A),
      600: Color(0xB31B243A),
      700: Color(0xCC1B243A),
      800: Color(0xE61B243A),
      900: Color(0xFF1B243A),
    },
  );
  static Color primaryLight = const Color(0xCC1B243A);
  static Color primaryDark = const Color(0xFF1B243A);
  static Color darkGrey = const Color(0xFF525252);
  static Color lightGrey = const Color(0xFF9E9E9E);
  static Color grey = const Color(0xFF737477);
  static Color grey1 = const Color(0xFF707070);
  static Color grey2 = const Color(0xFF797979);
  static Color error = const Color(0xFFe61f34);
  static Color success = const Color(0xFF00C853);
  static Color warning = const Color(0xFFff9800);
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);
}
