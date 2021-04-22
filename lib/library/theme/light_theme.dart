part of 'theme.dart';

ThemeData lightTheme = ThemeData(
  textTheme: textLight,
  accentColor: mainColor,
  brightness: Brightness.light,
  scaffoldBackgroundColor: fourthColor,
  backgroundColor: fourthColor,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: fourthColor,
    unselectedItemColor: thridColor,
    selectedItemColor: mainColor,
    elevation: 0,
  ),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    color: secondaryColor,
    elevation: 0,
  ),
);

TextTheme textLight = TextTheme(
  headline1: TextStyle(
    color: Colors.black,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w300,
    // fontSize: 96,
  ),
  headline2: TextStyle(
    color: Colors.black,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w300,
    // fontSize: 60,
  ),
  headline3: TextStyle(
    color: Colors.black,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w400,
    // fontSize: 48,
  ),
  headline4: TextStyle(
    color: Colors.black,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w300,
    // fontSize: 34,
  ),
  headline5: TextStyle(
    color: Colors.black,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w300,
    // fontSize: 24,
  ),
  headline6: TextStyle(
    color: Colors.black,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w500,
    // fontSize: 20,
  ),
  subtitle1: TextStyle(
    color: Colors.black,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w400,
    // fontSize: 16,
  ),
  subtitle2: TextStyle(
    color: Colors.black,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w500,
    // fontSize: 14,
  ),
  bodyText1: TextStyle(
    color: Colors.black,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w400,
    // fontSize: 16,
  ),
  bodyText2: TextStyle(
    color: Colors.black,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w400,
    // fontSize: 14,
  ),
  button: TextStyle(
    color: Colors.black,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w500,
    // fontSize: 14,
  ),
  caption: TextStyle(
    color: Colors.black,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w400,
    // fontSize: 12,
  ),
  overline: TextStyle(
    color: Colors.black,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w400,
    // fontSize: 10,
  ),
);
