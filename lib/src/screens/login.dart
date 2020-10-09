import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(Platform.isIOS){
      return CupertinoPageScaffold(
        child: pageBody(context)
      );
    } else {
      return Scaffold(
        body: pageBody(context),
      );
    }
    
  }

  Widget pageBody(context) {
    return Center(child: (Platform.isIOS)
    ? CupertinoButton(child: Text('Signup'), onPressed: (){
      Navigator.pushReplacementNamed(context, '/signup');
    })
    : RaisedButton( child: Text('Signup'),onPressed: (){
      Navigator.pushReplacementNamed(context, '/signup');
    })
    );
  }
}