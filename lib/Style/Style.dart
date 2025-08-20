import 'dart:ui';
import 'package:flutter/material.dart';

Color colorgreen= Color(0xFF00695C);
Color colorLime=Color(0xFFCDDC39);
const Color colorBlack = Colors.black;
const Color colorWhite=Colors.white;
const Color colorCyan=Colors.cyanAccent;
FontWeight weight9=FontWeight.w900;
FontWeight weight6=FontWeight.w700;
FontWeight weight4=FontWeight.w700;

TextStyle textStyle(color,weight,size){
  return TextStyle(color: color,
      fontWeight: weight,fontSize: size
  );
}