import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle(double fontSize, Color color, FontWeight weight) {
  return GoogleFonts.lato(
    fontSize: fontSize,
    color: color,
    fontWeight: weight,
  );
}

Color textColor = Colors.grey.shade700;
CollectionReference<Map<String, dynamic>> userCollection =
    FirebaseFirestore.instance.collection('users');
