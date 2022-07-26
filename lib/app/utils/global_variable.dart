import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalVariable {
  static const Color primaryColor = Color(0xffAA80F1);
  static const Color darkGreyColor = Color(0xff646464);
  static const Color secondaryColor = Color(0xffF0E6FF);
  static const Color whiteColor = Color(0xffFFFEFE);
  static const Color secondaryPurple = Color(0xffE1CFFF);
  static const Color pinkColor = Color(0xffFFB1C1);
}

TextStyle get headingTextStyle {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w800,
      color: GlobalVariable.primaryColor,
    ),
  );
}

TextStyle get subHeadingTextStyle {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: GlobalVariable.primaryColor,
    ),
  );
}

TextStyle get titleTextStyle {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: GlobalVariable.darkGreyColor,
    ),
  );
}
