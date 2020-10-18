
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_mano/src/styles/colors.dart';
import 'package:la_mano/src/styles/text.dart';

abstract class AppNavbar {


  static CupertinoSliverNavigationBar cupertinoNavBar ({String title, BuildContext context}){
    return CupertinoSliverNavigationBar(
      largeTitle: Text(title, style: TextStyles.navTitle),
      backgroundColor: Colors.transparent,
      border: null,
    );
  }


  static SliverAppBar materialNavBar({
    @required String title,
    @required TabBar tabBar,
  }) {
    return SliverAppBar(
      title: Text(title, style: TextStyles.navTitleMaterial),
      backgroundColor: AppColors.darkblue,
      bottom: tabBar,
      floating: true,
      pinned: true,
      snap: true,
    );
  }
}