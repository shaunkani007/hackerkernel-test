import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData of(context) {
    var theme = Theme.of(context);
    return theme.copyWith(
      textTheme: theme.textTheme.copyWith(
        bodyText1: GoogleFonts.openSans(
          textStyle: theme.textTheme.bodyText1?.copyWith(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        headline6: GoogleFonts.openSans(
          textStyle: theme.textTheme.headline6?.copyWith(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        headline5: GoogleFonts.openSans(
          textStyle: theme.textTheme.headline5?.copyWith(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
        headline4: GoogleFonts.openSans(
          textStyle: theme.textTheme.headline4?.copyWith(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        headline3: GoogleFonts.openSans(
          textStyle: theme.textTheme.headline3?.copyWith(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        bodyText2: GoogleFonts.openSans(
          textStyle: theme.textTheme.bodyText2?.copyWith(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        headline2: GoogleFonts.openSans(
          textStyle: theme.textTheme.headline3?.copyWith(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
        headline1: GoogleFonts.openSans(
          textStyle: theme.textTheme.headline1?.copyWith(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
        caption: GoogleFonts.openSans(
          textStyle: theme.textTheme.caption?.copyWith(
            color: Colors.orange,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle2: GoogleFonts.openSans(
          textStyle: theme.textTheme.subtitle2?.copyWith(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
