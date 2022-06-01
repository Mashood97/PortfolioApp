import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.amber.shade500,
    textTheme: GoogleFonts.montserratTextTheme(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Color(0xFFBDBDBD),
      elevation: 5.0,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      enableFeedback: true,
    ),
    navigationRailTheme: NavigationRailThemeData(
      groupAlignment: 0,
      backgroundColor: Colors.white,
      useIndicator: false,
      labelType: NavigationRailLabelType.all,
      elevation: 0.0,
      selectedIconTheme: IconThemeData(
        color: Colors.amber.shade600,
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.white,
      ),
      selectedLabelTextStyle: TextStyle(
        color: Colors.amber.shade600,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.black87,
      endIndent: 20,
      indent: 20,
      space: 50,
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.amber.shade500,
    textTheme: GoogleFonts.montserratTextTheme(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.white,
      elevation: 5.0,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      enableFeedback: true,
    ),
    navigationRailTheme: NavigationRailThemeData(
      groupAlignment: 0,
      backgroundColor: Colors.black,
      useIndicator: false,
      labelType: NavigationRailLabelType.all,
      elevation: 5.0,
      selectedIconTheme: IconThemeData(
        color: Colors.amber.shade600,
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.white,
      ),
      selectedLabelTextStyle: TextStyle(
        color: Colors.amber.shade600,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.white60,
      endIndent: 20,
      indent: 20,
      space: 50,
    ),
  );
}
