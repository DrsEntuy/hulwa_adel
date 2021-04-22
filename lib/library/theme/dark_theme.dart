part of 'theme.dart';

ThemeData darkTheme = ThemeData(
  textTheme: textDark,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  backgroundColor: Colors.black,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    unselectedItemColor: Colors.white,
    selectedItemColor: Colors.redAccent,
    elevation: 0,
  ),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    color: Colors.black,
    elevation: 0,
  ),
);

TextTheme textDark = TextTheme(
  headline1: TextStyle(
    color: Colors.white,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w300,
    // fontSize: 96,
  ),
  headline2: TextStyle(
    color: Colors.white,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w300,
    // fontSize: 60,
  ),
  headline3: TextStyle(
    color: Colors.white,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w400,
    // fontSize: 48,
  ),
  headline4: TextStyle(
    color: Colors.white,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w300,
    // fontSize: 34,
  ),
  headline5: TextStyle(
    color: Colors.white,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w300,
    // fontSize: 24,
  ),
  headline6: TextStyle(
    color: Colors.white,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w500,
    // fontSize: 20,
  ),
  subtitle1: TextStyle(
    color: Colors.white,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w400,
    // fontSize: 16,
  ),
  subtitle2: TextStyle(
    color: Colors.white,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w500,
    // fontSize: 14,
  ),
  bodyText1: TextStyle(
    color: Colors.white,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w400,
    // fontSize: 16,
  ),
  bodyText2: TextStyle(
    color: Colors.white,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w400,
    // fontSize: 14,
  ),
  button: TextStyle(
    color: Colors.white,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w500,
    // fontSize: 14,
  ),
  caption: TextStyle(
    color: Colors.white,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w400,
    // fontSize: 12,
  ),
  overline: TextStyle(
    color: Colors.white,
    fontFamily: mainFontFamily,
    // fontWeight: FontWeight.w400,
    // fontSize: 10,
  ),
);
