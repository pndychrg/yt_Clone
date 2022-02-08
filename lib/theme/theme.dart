import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yt_clone/theme/constants.dart';

//Let's apply light nad dark theme on our app
ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    appBarTheme: appBarThemeLight,
    dividerColor: Colors.transparent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kLightColor),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: appBarThemeDark,
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: Colors.white),
  );
}

final appBarThemeLight = AppBarTheme(
  color: Colors.white,
  centerTitle: false,
  elevation: 0,
);

final appBarThemeDark = AppBarTheme(
  color: Colors.grey[900],
  centerTitle: false,
  elevation: 0,
);
