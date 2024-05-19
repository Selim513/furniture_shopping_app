import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle GetTiteldFontsGrey(
    {FontWeight fontweight = FontWeight.w600,
    double fontsize = 24,
    color = const Color(0xff606060)}) {
  return GoogleFonts.gelasio(
      fontWeight: fontweight, fontSize: fontsize, color: color);
}

TextStyle GetTiteldFontsblack(
    {FontWeight fontweight = FontWeight.w700,
    double fontsize = 30,
    color = const Color(0xff303030)}) {
  return GoogleFonts.gelasio(
      fontWeight: fontweight, fontSize: fontsize, color: color);
}

TextStyle GetsmallFontsGrey(
    {FontWeight fontweight = FontWeight.w400,
    double fontsize = 18,
    double height = 2,
    color = const Color(0xff808080)}) {
  return GoogleFonts.nunitoSans(
      fontWeight: fontweight, fontSize: fontsize, color: color, height: height);
}

TextStyle GetprimaryTitleFontBlack(
    {FontWeight fontweight = FontWeight.w700,
    double fontsize = 24,
    color = const Color(0xff303030)}) {
  return GoogleFonts.merriweather(
      fontWeight: fontweight, fontSize: fontsize, color: color);
}

TextStyle GetsmallFontsBlack(
    {FontWeight fontweight = FontWeight.w700,
    double fontsize = 14,
    double height = 2,
    color = const Color(0xff303030)}) {
  return GoogleFonts.nunitoSans(
    fontWeight: fontweight,
    fontSize: fontsize,
    color: color,
    height: height,
  );
}
