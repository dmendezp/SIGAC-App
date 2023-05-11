import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appsstyle(double size, Color color, FontWeight fw) {
  return GoogleFonts.oxygen(fontSize: size, color: color, fontWeight: fw);
}

TextStyle appsstyleWithHt(double size, Color color, FontWeight fw, double ht) {
  return GoogleFonts.dosis(
      fontSize: size, color: color, fontWeight: fw, height: ht);
}
