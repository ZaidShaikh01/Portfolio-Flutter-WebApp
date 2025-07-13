import 'package:flutter/material.dart';

class AppTheme {
  final Color primaryColor;
  final Color secondaryColor;
  final Color darkColor;
  final Color bodyTextColor;
  final Color bgColor;
  final Color textColor;
  final Color linearColorOne;
  final Color linearColorTwo;
  final Color boxShadowOne;
  final Color boxShadowTwo;
  final Color buttonTextColor;
  final Color developerTextColorOne;
  final Color developerTextColorTwo;
  const AppTheme({
    required this.primaryColor,
    required this.secondaryColor,
    required this.darkColor,
    required this.bodyTextColor,
    required this.bgColor,
    required this.textColor,
    required this.linearColorOne,
    required this.linearColorTwo,
    required this.boxShadowOne,
    required this.boxShadowTwo,
    required this.buttonTextColor,
    required this.developerTextColorOne,
    required this.developerTextColorTwo,
  });
}

// Light Theme
const lightTheme = AppTheme(
  primaryColor: Color(0xFF1E1E28),
  secondaryColor: Color(0xFF6C63FF),
  darkColor: Color(0xFFE63946),
  bodyTextColor: Color(0xFF4B5563),
  bgColor: Color(0xFFFEFEFA),
  //bgColor: Color(0xFFF8F9FA),
  textColor: Color(0xFF1E1E28),
  // linearColorOne: Color(0xFF4286f4),
  // linearColorTwo: Color(0xFF373B44),
  // // boxShadowOne: Color(0x552152B1), // Richer indigo-blue shadow
  // // boxShadowTwo: Color(0x55315FC8),
  // boxShadowOne: Colors.blueAccent, // Richer indigo-blue shadow
  // boxShadowTwo: Colors.grey,
  //
  // buttonTextColor: Colors.white,
  linearColorOne: Colors.black, // Dark teal
  linearColorTwo: Colors.black, // Blue-gray
  boxShadowOne: Colors.grey,
  boxShadowTwo: Colors.blueGrey,
  buttonTextColor: Colors.white,

  developerTextColorOne: Color(0xFF8711c1),
  developerTextColorTwo: Color(0xFFc53a94),
);

// Dark Theme
const darkTheme = AppTheme(
  // primaryColor: Colors.white,
  // secondaryColor: Color(0xFF00B4D8),
  // darkColor: Color(0xFF7209B7),
  // bodyTextColor: Color(0xFFBDBDBD),
  // bgColor: Color(0xFF121212),
  // textColor: Colors.white,
  // linearColorOne: Color(0xFF0F2027),
  // linearColorTwo: Color(0xFF2C5364),
  // boxShadowOne: Color(0x330F2027),
  // boxShadowTwo: Color(0x332C5364),
  // buttonTextColor: Colors.white,
  primaryColor: Colors.white,
  secondaryColor: Color(0xFF242430), // Cyan accent
  darkColor: Color(0xFF191923), // Purple for CTAs
  bodyTextColor: Color(0xFFBDBDBD), // Light gray
  bgColor: Colors.black, // True dark background
  textColor: Colors.white,

  // linearColorOne: Colors.pink, // Dark teal
  // linearColorTwo: Color(0xFF0D47A1), // Blue-gray
  // boxShadowOne: Colors.blue,
  // boxShadowTwo: Colors.red,
  // buttonTextColor: Colors.white,
  linearColorOne: Color(0xFFFEFEFA), // Dark teal
  linearColorTwo: Color(0xFFF8F8FF), // Blue-gray
  boxShadowOne: Colors.white38,
  boxShadowTwo: Colors.white54,
  buttonTextColor: Colors.black,
  developerTextColorOne: Colors.pink,
  developerTextColorTwo: Colors.blue,
);

const double defaultPadding = 20.0;
