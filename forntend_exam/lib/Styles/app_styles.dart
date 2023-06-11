import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
// Color styles
  static Color primaryColor = const Color(0xff58264b);
  static Color text1Color = const Color.fromARGB(255, 83, 83, 83);
  static Color textFieldColor = const Color.fromARGB(127, 139, 139, 139);

// Font styles
  static TextStyle textStyle = GoogleFonts.poppins(
      fontSize: 26, color: text1Color, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = GoogleFonts.poppins(
      fontSize: 24, color: text1Color, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = GoogleFonts.poppins(
      fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = GoogleFonts.poppins(
      fontSize: 16, color: text1Color, fontWeight: FontWeight.w600);
  static TextStyle headLineStyle4 = GoogleFonts.poppins(
      fontSize: 14, color: text1Color, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle5 = GoogleFonts.poppins(
      fontSize: 12, color: text1Color, fontWeight: FontWeight.w400);
  static TextStyle textFieldStyle = GoogleFonts.roboto(
      fontSize: 12, color: textFieldColor, fontWeight: FontWeight.w500);
}
