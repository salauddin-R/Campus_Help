import 'dart:ui';
import 'package:flutter/material.dart';

Color colorDarkWhite=Color(0xFFD9D9D9);
Color colorWhiteLight=Color(0xFFD9D9D9);
Color colorPora=Color(0xFFF08A5D);
Color colorBaguni=Color(0xFFB688A7);
Color colorRed=Color(0xFF8B0000);
Color colorPink=Color(0xFFC633BB);
Color colorgreen= Color(0xFF00695C);
Color colorLime=Color(0xFFCDDC39);
const Color colorBlack = Colors.black;
const Color colorWhite=Colors.white;
const Color colorCyan=Colors.cyanAccent;

FontWeight weight9=FontWeight.w900;
FontWeight weight6=FontWeight.w700;
FontWeight weight4=FontWeight.w500;

TextStyle textStyle(color,weight,size){
  return TextStyle(color: color,
      fontWeight: weight,fontSize: size
  );
}



              // Row(
              //   children: [
              //     Column(
              //       children: [
              //         ElevatedButton(onPressed: (){
              //           Navigator.pushNamed(context, '/StudyResources');
              //         },
              //           style:ElevatedButton.styleFrom(
              //             fixedSize: Size(180,25),backgroundColor: colorLime,
              //           ) ,
              //           child:Row(
              //             children: [
              //               Icon(Icons.book_sharp),
              //               Text("Study resources",style:textStyle(colorBlack,weight6,13.0)),
              //             ],
              //           ),),
              //         ElevatedButton(onPressed: (){
              //           Navigator.pushNamed(context, '/BloodPortion');

              //         },
              //           style:ElevatedButton.styleFrom(
              //             fixedSize: Size(180,25),backgroundColor: colorLime,
              //           ) ,
              //           child:Row(
              //             children: [
              //               Icon(Icons.bloodtype),
              //               Text("Blood Group Finder",style:textStyle(colorBlack,weight6,12.0)),
              //             ],
              //           ),),
              //       ],
              //     ),

              //     Column(
              //       children: [
              //         ElevatedButton(onPressed: (){},
              //           style:ElevatedButton.styleFrom(
              //             fixedSize: Size(180,25),backgroundColor: colorLime,
              //           ) ,
              //           child:Row(
              //             children: [
              //               Icon(Icons.location_on_sharp),
              //               Text("Campus Guide",style:textStyle(colorBlack,weight6,13.0)),
              //             ],
              //           ),),
              //         ElevatedButton(onPressed: (){},
              //           style:ElevatedButton.styleFrom(
              //             fixedSize: Size(180,25),backgroundColor: colorLime,
              //           ) ,
              //           child:Row(
              //             children: [
              //               Icon(Icons.school),
              //               Text("Teachers Panel",
              //                   style:textStyle(colorBlack,weight6,13.0)),
              //             ],
              //           ),),
              //       ],
              //     ),
              //   ],
              // ),
  