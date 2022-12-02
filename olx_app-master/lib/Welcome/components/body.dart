import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olx_app/Login/login_screen.dart';
import 'package:olx_app/Signup/signup_screen.dart';
// import 'package:olx_app/Login/login_screen.dart';
// import 'package:olx_app/Signup/signup_screen.dart';
import 'package:olx_app/Welcome/components/background.dart';
import 'package:olx_app/Widgets/rounded_button.dart';

class WelcomeBody extends StatelessWidget{
  @override
Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return WelcomeBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "EASYKITAB",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "BebasNeue-Regular",
                  fontSize: 60.0,
                  color: Colors.purple[900]
              ),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset("assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),

            RoundedButton(
              text:"LOGIN",
              press: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen() ;
                    },
                  ),
                );

              },
            ),

           RoundedButton(
             text: "SIGNUP",
             color: Colors.deepPurple[100],
             textColor: Colors.black,
             press: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) {
                     return SignUpScreen() ;
                   },
                 ),
               );


             },
           ),

          ],
        )
      ),
    );
}

}