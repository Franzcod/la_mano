
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_mano/src/styles/tabbar.dart';
import 'package:la_mano/src/widgets/navbar.dart';
import 'package:la_mano/src/widgets/orders.dart';
import 'package:la_mano/src/widgets/products.dart';
import 'package:la_mano/src/widgets/profile.dart';
import 'package:la_mano/src/widgets/vendor_scaffold.dart';


class Vendor extends StatelessWidget {
  const Vendor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    if( Platform.isIOS){
      return CupertinoPageScaffold(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return <Widget>[
              AppNavbar.cupertinoNavBar(title: 'Vendedor Name', context: context),
            ];
          },
          body: VendorScaffold.cupertinoTabScaffold,
        ),
      );
    } else {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: NestedScrollView(
            body: TabBarView(children: <Widget>[
              Products(),
              Orders(),
              Profile()
            ],),
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return <Widget>[
                AppNavbar.materialNavBar(title: 'Vendor Name', tabBar: vendorTabBar)

                
              ];
            },
          ),
        ),
      );
    }
    
  }


  static TabBar get vendorTabBar {
    return TabBar(
      unselectedLabelColor: TabBarStyles.unselectedLabelColor,
      labelColor: TabBarStyles.labelColor,
      indicatorColor: TabBarStyles.indicatorColor,
      tabs:<Widget> [
        Tab(icon: Icon(Icons.list)),
        Tab(icon: Icon(Icons.shopping_cart)),
        Tab(icon: Icon(Icons.person)),
      ],
    );
  }
}