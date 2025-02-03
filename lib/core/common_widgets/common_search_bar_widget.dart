import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonSearchBarWidget extends StatelessWidget {
  final String hintText;
  const CommonSearchBarWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            isDense: true,
            prefixIcon: Icon(Icons.search),
            hintText: hintText,
            hintStyle: GoogleFonts.urbanist(
                fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.2),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xffd2d6db)),
              borderRadius: BorderRadius.circular(12),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xffd2d6db)),
              borderRadius: BorderRadius.circular(12),
            )));
  }
}
