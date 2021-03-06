
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:la_mano/src/styles/colors.dart';


abstract class TextStyles{
  
  static TextStyle get body{
    return GoogleFonts.roboto(
      textStyle: TextStyle(color: AppColors.darkgray, fontSize: 16));
  }

  static TextStyle get title{
    return GoogleFonts.poppins(
      textStyle: TextStyle(color: AppColors.darkblue, fontWeight: FontWeight.bold, fontSize: 40));
  }

  static TextStyle get navTitle{
    return GoogleFonts.poppins(
      textStyle: TextStyle(color: AppColors.darkblue, fontWeight: FontWeight.bold));
  }

  static TextStyle get navTitleMaterial{
    return GoogleFonts.poppins(
      textStyle: TextStyle(color: AppColors.straw, fontWeight: FontWeight.bold));
  }

  static TextStyle get link{
    return GoogleFonts.roboto(
      textStyle: TextStyle(color: AppColors.lightblue, fontSize: 18, fontWeight: FontWeight.bold));
  }

  static TextStyle get suggestion{
    return GoogleFonts.roboto(
      textStyle: TextStyle(color: AppColors.lightgray, fontSize: 20));
  }

  static TextStyle get error{
    return GoogleFonts.roboto(
      textStyle: TextStyle(color: AppColors.red, fontSize: 12));
  }

  static TextStyle get buttonTextLight{
    return GoogleFonts.roboto(
      textStyle: TextStyle(color:Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold)
    );
  }

  static TextStyle get buttonTextDark{
    return GoogleFonts.roboto(
      textStyle: TextStyle(color:AppColors.darkgray, fontSize: 17.0, fontWeight: FontWeight.bold)
    );
  }

}