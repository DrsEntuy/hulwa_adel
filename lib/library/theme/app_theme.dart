part of 'theme.dart';

final Color mainColor = Color(0XFF2CCED2);
final Color secondaryColor = Color(0xFF26474E);
final Color thridColor = Color(0xFFE8EBF3);
final Color fourthColor = Color(0xFFEFF2FA);

//
final Color darkerColor = Color(0xFF3568D4);
final Color lighterColor = Color(0xFF6698FF);
final Color outlineColor = Color(0xFF3E7BFA);

// Font
final String mainFontFamily = 'Poppins';

// Theme
bool lightThemeSwitch = true;

class AppTheme {
  static ThemeData light = lightTheme;
  static ThemeData dark = darkTheme;
}
