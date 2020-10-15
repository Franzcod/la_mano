import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:la_mano/src/blocs/auth_bloc.dart';
import 'package:la_mano/src/styles/base.dart';
import 'package:la_mano/src/styles/text.dart';
import 'package:la_mano/src/widgets/button.dart';
import 'package:la_mano/src/widgets/social_button.dart';
import 'package:la_mano/src/widgets/textfield.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final authBloc = Provider.of<AuthBloc>(context);

    if(Platform.isIOS){
      return CupertinoPageScaffold(
        child: pageBody(context, authBloc)
      );
    } else {
      return Scaffold(
        //  backgroundColor: Color(0xffF2F2F2), /// Color Gris  Color(0xffF2F2F2)
        backgroundColor: Colors.white,
        body: pageBody(context, authBloc),
      );
    }
    
  }

  Widget pageBody(BuildContext context, AuthBloc authBloc) {

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
        child: ListView(
          
          padding: EdgeInsets.only(top: 70),
          children:<Widget> [
            

            Container(
              color: Colors.transparent,

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .13,

              child: Text(
                'La Mano',
                textAlign: TextAlign.center,
                style: GoogleFonts.josefinSans(fontSize: 80)
                
              )
            ),
            Container(
              margin: EdgeInsets.only(bottom: 0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .13,
              decoration: BoxDecoration(
                
                image: DecorationImage(
                  image: AssetImage('assets/images/aura.png'),
                  fit: BoxFit.fill
                )
              ),
            ),
            
            // SizedBox(height: 20,),
            
            Container(
              padding: EdgeInsets.symmetric(horizontal:40, vertical :20),
              child: Column(
                
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10),
                    child:StreamBuilder<String>(
                      stream: authBloc.email,
                      builder: (context, snapshot) {
                        return AppTextField(
                          isIOS: Platform.isIOS,
                          hintText: 'Correo',
                          cupertinoIcon: CupertinoIcons.mail,
                          materialIcon: Icons.mail_outline,
                          textInputType: TextInputType.emailAddress,
                          errorText: snapshot.error,
                          onChanged: authBloc.changeEmail,
                        );
                      }
                    ),
                  ),
                  

                  Padding(
                    padding:  EdgeInsets.only(bottom: 20, top: 10),
                    child: StreamBuilder<String>(
                      stream: authBloc.password,
                      builder: (context, snapshot) {
                        return AppTextField(
                          isIOS: Platform.isIOS,
                          hintText: 'Contraseña',
                          cupertinoIcon: IconData(0xf4c9, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage),
                          materialIcon: Icons.lock,
                          textInputType: TextInputType.emailAddress,
                          obscureText: true,
                          errorText: snapshot.error,
                          onChanged: authBloc.changePassword,
                        );
                      }
                    ),
                  ),

                  
                  StreamBuilder<bool>(
                    stream: authBloc.isValid,
                    builder: (context, snapshot) {
                      return AppButton(buttonText: 'Inicio', buttonType: (snapshot.data == true) ?  ButtonType.LightBlue : ButtonType.Disabled);
                    }
                  ),
                ],
              ),
            ),

            Center(
              child: Text('Or', style: TextStyles.suggestion,)
            ),
            Padding(
              padding: BaseStyles.listPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  AppSocialButton(socialType: SocialType.Facebook),
                  SizedBox(width: 30,),
                  AppSocialButton(socialType: SocialType.Google)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: BaseStyles.listPadding,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '¿EresNuevo?',
                  style: TextStyles.body,
                  children: [
                    TextSpan(
                      text: '  Registrate!',
                      style: TextStyles.link,
                      recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushNamed(context, '/signup')

                    )
                  ]
                )
              ),
            ),

            // SizedBox(height: 20,),
            
            // BajoInput(),

            
          ],
        ),
    );
  }



 

}


