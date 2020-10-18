import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_mano/src/screens/landing.dart';
import 'package:la_mano/src/screens/login.dart';
import 'package:la_mano/src/screens/signup.dart';
import 'package:la_mano/src/screens/vendor.dart';

abstract class Routes{

  static MaterialPageRoute materialRoutes(RouteSettings settings){
    switch (settings.name) {
      case "/landing":
        return MaterialPageRoute(builder: (context) => Landing());
      
      case "/signup":
        return MaterialPageRoute(builder: (context) => Signup());

      case "/login":
        return MaterialPageRoute(builder: (context) => Login());

      case "/vendor":
        return MaterialPageRoute(builder: (context) => Vendor());

      default:
        return MaterialPageRoute(builder: (context) => Login());
    }
  }

  static CupertinoPageRoute cupertinoRoutes(RouteSettings settings){
    switch (settings.name) {
      case "/landing":
        return CupertinoPageRoute(builder: (context) => Landing());
      
      case "/signup":
        return CupertinoPageRoute(builder: (context) => Signup());

      case "/login":
        return CupertinoPageRoute(builder: (context) => Login());

      case "/vendor":
        return CupertinoPageRoute(builder: (context) => Vendor());

      default:
        return CupertinoPageRoute(builder: (context) => Login());
    }
  }




}