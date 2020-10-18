


import 'package:flutter/cupertino.dart';
import 'package:la_mano/src/styles/colors.dart';
import 'package:la_mano/src/widgets/orders.dart';
import 'package:la_mano/src/widgets/products.dart';
import 'package:la_mano/src/widgets/profile.dart';

abstract class VendorScaffold {


  static CupertinoTabScaffold get cupertinoTabScaffold {
    return CupertinoTabScaffold(
      
      tabBar: _cupertinoTabBar,
      tabBuilder: (context, index) {
        return _pageSelection(index);
      }
    );
  }

  static get _cupertinoTabBar{
    return CupertinoTabBar(
      backgroundColor: AppColors.darkblue,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.create), label: 'Product'),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart), label: 'Orders'),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'Profile'),      
      ],
    );
  }

  static Widget _pageSelection(int index){
    if(index == 0 ){
      return Products();
    }

    if(index == 1) {
      return Orders();
    }

    return Profile();
  }
}