
import 'package:flutter/material.dart';
import 'package:la_mano/src/styles/base.dart';
import 'package:la_mano/src/styles/colors.dart';
import 'package:la_mano/src/styles/text.dart';

abstract class TextFieldStyle {

  static double get textBoxHorizontal=> BaseStyles.listFieldHorizontal;


  static double get textBoxVerticall=> BaseStyles.listFieldVerticall;

  static TextStyle get text=> TextStyles.body;

  static TextStyle get placeholder=> TextStyles.suggestion;

  static Color get cursorColor=> AppColors.darkblue;

  static Widget iconPrefix(IconData icon){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Icon(
        icon,
        size: 28,
        color: AppColors.lightblue,
      ),
    );
  }

  static TextAlign get textAlign=> TextAlign.center;

  static BoxDecoration get cupertinoDecoration{
    return BoxDecoration(
          border: Border.all(
            color: AppColors.darkblue, 
            width: BaseStyles.borderWidth
          ),
          borderRadius: BorderRadius.circular(BaseStyles.borderRadius)
        );
  }

  static BoxDecoration get cupertinoErrorDecoration{
    return BoxDecoration(
          border: Border.all(
            color: AppColors.red, 
            width: BaseStyles.borderWidth
          ),
          borderRadius: BorderRadius.circular(BaseStyles.borderRadius)
        );
  }

  static InputDecoration materialDecoration(String hintText, IconData icon,String errorText ){
    return InputDecoration(
      contentPadding: EdgeInsets.all(8.0),
      hintText: hintText,
      hintStyle:  TextFieldStyle.placeholder,
      border: InputBorder.none ,
      errorText: errorText,
      errorStyle: TextStyles.error,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.darkblue, width: BaseStyles.borderWidth),
        borderRadius: BorderRadius.circular(BaseStyles.borderRadius)
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.darkblue, width: BaseStyles.borderWidth),
        borderRadius: BorderRadius.circular(BaseStyles.borderRadius)
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.straw, width: BaseStyles.borderWidth),
        borderRadius: BorderRadius.circular(BaseStyles.borderRadius)
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.red, width: BaseStyles.borderWidth),
        borderRadius: BorderRadius.circular(BaseStyles.borderRadius)
      ),
      prefixIcon: iconPrefix(icon)
    );
  }


} 