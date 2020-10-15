import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_mano/src/blocs/auth_bloc.dart';
import 'package:la_mano/src/routes.dart';
import 'package:la_mano/src/screens/login.dart';
import 'dart:io';

import 'package:provider/provider.dart';

final authBloc = AuthBloc();


class App extends StatefulWidget {

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider(create: (context) => authBloc,),
    ],
    child: PlatformApp());
  }

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }
}


class PlatformApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    if(Platform.isIOS){
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
        onGenerateRoute: Routes.cupertinoRoutes,
        theme: CupertinoThemeData(
          scaffoldBackgroundColor: Colors.white
        ),
      );
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
        onGenerateRoute: Routes.materialRoutes,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      );
    }
  }
}