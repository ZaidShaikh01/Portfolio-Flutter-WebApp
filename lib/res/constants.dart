import 'package:flutter/material.dart';

late Color primaryColor;
late Color secondaryColor;
late Color darkColor;
late Color bodyTextColor;
late Color bgColor;
late Color textColor;

late Color linearColorOne;
late Color linearColorTwo;
late Color boxShadowOne;
late Color boxShadowTwo;
late Color buttonTextColor;

const double defaultPadding = 20.0;

void setLightTheme() {
  primaryColor = const Color(0xFF1E1E28); // Charcoal dark gray for text
  secondaryColor = const Color(0xFF6C63FF); // Soft violet-indigo accent
  darkColor = const Color(0xFFE63946); // Rich coral red for CTAs
  bodyTextColor = const Color(0xFF4B5563); // Muted dark gray for body
  bgColor = const Color(0xFFF8F9FA); // Clean off-white background
  textColor = const Color(0xFF1E1E28); // Same as primary for consistency

  linearColorOne = const Color(0xFF4286f4); // Royal blue
  linearColorTwo = const Color(0xFF373B44); // Dark indigo
  boxShadowOne = const Color(0x224286F4);
  boxShadowTwo = const Color(0x22373B44);
  buttonTextColor = Colors.white;
}

void setDarkTheme() {
  // primaryColor = Colors.white;
  // secondaryColor = const Color(0xFF00B4D8); // Cyan accent
  // darkColor = const Color(0xFF7209B7); // Purple for CTAs
  // bodyTextColor = const Color(0xFFBDBDBD); // Light gray
  // bgColor = const Color(0xFF121212); // True dark background
  // textColor = Colors.white;
  //
  // linearColorOne = const Color(0xFF0F2027); // Dark teal
  // linearColorTwo = const Color(0xFF2C5364); // Blue-gray
  // boxShadowOne = const Color(0x330F2027);
  // boxShadowTwo = const Color(0x332C5364);
  // buttonTextColor = Colors.white;

  primaryColor = Colors.white;
  secondaryColor = const Color(0xFF242430); // Cyan accent
  darkColor = const Color(0xFF191923); // Purple for CTAs
  bodyTextColor = const Color(0xFFBDBDBD); // Light gray
  bgColor = const Color(0xFF000515); // True dark background
  textColor = Colors.white;

  linearColorOne = Colors.pink; // Dark teal
  linearColorTwo = Color(0xFF0D47A1); // Blue-gray
  boxShadowOne = Colors.blue;
  boxShadowTwo = Colors.red;
  buttonTextColor = Colors.white;
  // const primaryColor = Colors.white;
//
// const secondaryColor = Color(0xFF242430);
// const darkColor = Color(0xFF191923);
//
// const bodyTextColor = Color(0xFF8B8B8D);
//
// const textColor = Colors.white;

// const linearColorOne = Colors.pink;
// const linearColorTwo = Color(0xFF0D47A1);
// const boxShadowOne = Colors.blue;
// const boxShadowTwo = Colors.red;
//const bgColor = Color(0xFF000515);
}
