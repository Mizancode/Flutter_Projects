import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData mytheme(context)=>ThemeData(
    // ignore: deprecated_member_use
    accentColor: Colors.amber,
  appBarTheme: AppBarTheme(
    color: Colors.deepPurple,
    iconTheme: IconThemeData(
    color: Colors.black,
    ),
  ),
     fontFamily: GoogleFonts.poppins().fontFamily,
  );
}